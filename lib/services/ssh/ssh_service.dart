import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dartssh2/dartssh2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../models/ssh/ssh_connection.dart';

final logger = Logger();

class SshService {
  SSHClient? _client;
  SftpClient? _sftpClient;
  final Map<String, SSHSession> _sessions = {};
  final StreamController<ConnectionState> _connectionStateController =
      StreamController<ConnectionState>.broadcast();

  Stream<ConnectionState> get connectionStateStream =>
      _connectionStateController.stream;

  bool get isConnected => _client != null;

  Future<void> connect(SshConnection connection) async {
    try {
      _connectionStateController.add(
        ConnectionState(
          connection: connection,
          status: ConnectionStatus.connecting,
        ),
      );

      final socket = await SSHSocket.connect(
        connection.host,
        connection.port,
        timeout: const Duration(seconds: 30),
      );

      late final SSHClient client;

      if (connection.usePrivateKey && connection.privateKey != null) {
        // Parse PEM private key
        final keyPairs = await OpenSSHKeyPair.fromPemString(
          connection.privateKey!,
          password: connection.privateKeyPassword,
        );
        client = SSHClient(
          socket,
          username: connection.username,
          identities: keyPairs,
        );
      } else {
        client = SSHClient(
          socket,
          username: connection.username,
          onPasswordRequest: () => connection.password ?? '',
        );
      }

      _client = client;

      _sftpClient = await client.sftp();

      _connectionStateController.add(
        ConnectionState(
          connection: connection,
          status: ConnectionStatus.connected,
          connectedAt: DateTime.now(),
        ),
      );

      logger.i('SSH connected to ${connection.host}:${connection.port}');
    } catch (e) {
      _connectionStateController.add(
        ConnectionState(
          connection: connection,
          status: ConnectionStatus.error,
          errorMessage: e.toString(),
        ),
      );
      logger.e('SSH connection failed: $e');
      throw Exception('Failed to connect: $e');
    }
  }

  Future<void> disconnect() async {
    for (final session in _sessions.values) {
      await session.done;
    }
    _sessions.clear();

    _sftpClient?.close();
    _sftpClient = null;

    _client?.close();
    _client = null;

    logger.i('SSH disconnected');
  }

  Future<String> executeCommand(String command) async {
    if (_client == null) {
      throw Exception('Not connected to SSH server');
    }

    try {
      final session = await _client!.execute(command);
      await session.stdin.close();

      final output = await session.stdout.join();
      final errors = await session.stderr.join();
      await session.done;

      if (errors.isNotEmpty && output.isEmpty) {
        throw Exception(errors);
      }

      return output;
    } catch (e) {
      logger.e('Command execution failed: $e');
      throw Exception('Failed to execute command: $e');
    }
  }

  Future<SSHSession> startShell({
    Function(String)? onOutput,
    Function(String)? onError,
  }) async {
    if (_client == null) {
      throw Exception('Not connected to SSH server');
    }

    final session = await _client!.shell(
      pty: const SSHPtyConfig(
        width: 80,
        height: 24,
      ),
    );

    final sessionId = DateTime.now().millisecondsSinceEpoch.toString();
    _sessions[sessionId] = session;

    if (onOutput != null) {
      session.stdout.listen(
        (data) => onOutput(utf8.decode(data)),
        onError: (error) => logger.e('Shell stdout error: $error'),
      );
    }

    if (onError != null) {
      session.stderr.listen(
        (data) => onError(utf8.decode(data)),
        onError: (error) => logger.e('Shell stderr error: $error'),
      );
    }

    session.done.then((_) {
      _sessions.remove(sessionId);
      logger.i('Shell session $sessionId closed');
    });

    return session;
  }

  Future<void> sendToShell(SSHSession session, String input) async {
    session.stdin.add(utf8.encode(input));
  }

  Future<List<RemoteFile>> listDirectory(String path) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      final items = await _sftpClient!.listdir(path);
      final files = <RemoteFile>[];

      for (final item in items) {
        if (item.filename == '.' || item.filename == '..') continue;

        files.add(RemoteFile(
          name: item.filename,
          path: '$path/${item.filename}',
          isDirectory: item.attr.isDirectory,
          size: item.attr.size,
          modifiedTime: item.attr.modifyTime != null
              ? DateTime.fromMillisecondsSinceEpoch(
                  item.attr.modifyTime! * 1000)
              : null,
        ));
      }

      return files;
    } catch (e) {
      logger.e('Failed to list directory: $e');
      throw Exception('Failed to list directory: $e');
    }
  }

  Future<String> readFile(String path) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      final file = await _sftpClient!.open(path);
      final content = await file.readBytes();
      await file.close();

      return utf8.decode(content);
    } catch (e) {
      logger.e('Failed to read file: $e');
      throw Exception('Failed to read file: $e');
    }
  }

  Future<void> writeFile(String path, String content) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      final file = await _sftpClient!.open(
        path,
        mode: SftpFileOpenMode.create | SftpFileOpenMode.write | SftpFileOpenMode.truncate,
      );
      await file.write(Stream.fromIterable([Uint8List.fromList(utf8.encode(content))]));
      await file.close();

      logger.i('File written: $path');
    } catch (e) {
      logger.e('Failed to write file: $e');
      throw Exception('Failed to write file: $e');
    }
  }

  Future<void> deleteFile(String path) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      await _sftpClient!.remove(path);
      logger.i('File deleted: $path');
    } catch (e) {
      logger.e('Failed to delete file: $e');
      throw Exception('Failed to delete file: $e');
    }
  }

  Future<void> createDirectory(String path) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      await _sftpClient!.mkdir(path);
      logger.i('Directory created: $path');
    } catch (e) {
      logger.e('Failed to create directory: $e');
      throw Exception('Failed to create directory: $e');
    }
  }

  Future<void> deleteDirectory(String path) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      await _sftpClient!.rmdir(path);
      logger.i('Directory deleted: $path');
    } catch (e) {
      logger.e('Failed to delete directory: $e');
      throw Exception('Failed to delete directory: $e');
    }
  }

  Future<void> rename(String oldPath, String newPath) async {
    if (_sftpClient == null) {
      throw Exception('SFTP not initialized');
    }

    try {
      await _sftpClient!.rename(oldPath, newPath);
      logger.i('Renamed: $oldPath -> $newPath');
    } catch (e) {
      logger.e('Failed to rename: $e');
      throw Exception('Failed to rename: $e');
    }
  }

  void dispose() {
    disconnect();
    _connectionStateController.close();
  }
}

class RemoteFile {
  final String name;
  final String path;
  final bool isDirectory;
  final int? size;
  final DateTime? modifiedTime;

  RemoteFile({
    required this.name,
    required this.path,
    required this.isDirectory,
    this.size,
    this.modifiedTime,
  });

  String get extension {
    final dotIndex = name.lastIndexOf('.');
    return dotIndex > 0 ? name.substring(dotIndex + 1) : '';
  }

  bool get isHidden => name.startsWith('.');
}

final sshServiceProvider = Provider<SshService>((ref) {
  final service = SshService();
  ref.onDispose(service.dispose);
  return service;
});

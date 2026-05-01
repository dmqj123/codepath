import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'ssh_connection.freezed.dart';
part 'ssh_connection.g.dart';

@HiveType(typeId: 1)
@freezed
class SshConnection with _$SshConnection {
  const factory SshConnection({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String host,
    @HiveField(3) required int port,
    @HiveField(4) required String username,
    @HiveField(5) String? password,
    @HiveField(6) String? privateKey,
    @HiveField(7) String? privateKeyPassword,
    @HiveField(8) @Default(false) bool usePrivateKey,
    @HiveField(9) String? group,
    @HiveField(10) @Default([]) List<String> tags,
    @HiveField(11) DateTime? lastConnected,
    @HiveField(12) @Default(false) bool isFavorite,
  }) = _SshConnection;

  factory SshConnection.fromJson(Map<String, dynamic> json) =>
      _$SshConnectionFromJson(json);
}

@HiveType(typeId: 2)
enum ConnectionStatus {
  @HiveField(0)
  disconnected,
  @HiveField(1)
  connecting,
  @HiveField(2)
  connected,
  @HiveField(3)
  error,
}

@freezed
class ConnectionState with _$ConnectionState {
  const factory ConnectionState({
    required SshConnection connection,
    @Default(ConnectionStatus.disconnected) ConnectionStatus status,
    String? errorMessage,
    DateTime? connectedAt,
  }) = _ConnectionState;
}

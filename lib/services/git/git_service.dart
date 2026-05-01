import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../models/git/git_models.dart';
import '../ssh/ssh_service.dart';

final logger = Logger();

class GitService {
  final SshService _sshService;

  GitService(this._sshService);

  Future<bool> isGitRepository(String path) async {
    try {
      final result = await _sshService.executeCommand(
        'cd "$path" && git rev-parse --git-dir 2>/dev/null',
      );
      return result.trim().isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  Future<GitStatus> getStatus(String path) async {
    try {
      final branchResult = await _sshService.executeCommand(
        'cd "$path" && git branch --show-current',
      );
      final branch = branchResult.trim();

      final statusResult = await _sshService.executeCommand(
        'cd "$path" && git status --porcelain',
      );

      final modified = <GitFile>[];
      final staged = <GitFile>[];
      final untracked = <GitFile>[];
      final conflicted = <GitFile>[];

      for (final line in statusResult.split('\n')) {
        if (line.length < 3) continue;

        final indexStatus = line[0];
        final workTreeStatus = line[1];
        final filePath = line.substring(3).trim();

        if (indexStatus == '?' && workTreeStatus == '?') {
          untracked.add(GitFile(path: filePath, status: GitFileStatus.untracked));
        } else if (indexStatus == 'U' || workTreeStatus == 'U' ||
                   indexStatus == 'A' && workTreeStatus == 'A' ||
                   indexStatus == 'D' && workTreeStatus == 'D') {
          conflicted.add(GitFile(path: filePath, status: GitFileStatus.conflicted));
        } else if (indexStatus != ' ' && indexStatus != '?') {
          GitFileStatus status;
          switch (indexStatus) {
            case 'A':
              status = GitFileStatus.added;
              break;
            case 'D':
              status = GitFileStatus.deleted;
              break;
            case 'R':
              status = GitFileStatus.renamed;
              break;
            default:
              status = GitFileStatus.modified;
          }
          staged.add(GitFile(path: filePath, status: status));
        } else if (workTreeStatus != ' ') {
          GitFileStatus status;
          switch (workTreeStatus) {
            case 'D':
              status = GitFileStatus.deleted;
              break;
            default:
              status = GitFileStatus.modified;
          }
          modified.add(GitFile(path: filePath, status: status));
        }
      }

      final aheadBehindResult = await _sshService.executeCommand(
        'cd "$path" && git rev-list --left-right --count HEAD...@{u} 2>/dev/null || echo "0\t0"',
      );
      final aheadBehind = aheadBehindResult.trim().split('\t');
      final ahead = int.tryParse(aheadBehind[0]) ?? 0;
      final behind = int.tryParse(aheadBehind[1]) ?? 0;

      return GitStatus(
        branch: branch,
        modified: modified,
        staged: staged,
        untracked: untracked,
        conflicted: conflicted,
        ahead: ahead,
        behind: behind,
      );
    } catch (e) {
      logger.e('Failed to get git status: $e');
      throw Exception('Failed to get git status: $e');
    }
  }

  Future<List<GitCommit>> getLog(String path, {int limit = 50}) async {
    try {
      final result = await _sshService.executeCommand(
        'cd "$path" && git log -$limit --pretty=format:"%H|%h|%s|%an|%at|%P"',
      );

      final commits = <GitCommit>[];
      for (final line in result.split('\n')) {
        final parts = line.split('|');
        if (parts.length >= 5) {
          commits.add(GitCommit(
            hash: parts[0],
            shortHash: parts[1],
            message: parts[2],
            author: parts[3],
            date: DateTime.fromMillisecondsSinceEpoch(
              int.parse(parts[4]) * 1000,
            ),
            parents: parts.length > 5 && parts[5].isNotEmpty
                ? parts[5].split(' ')
                : null,
          ));
        }
      }

      return commits;
    } catch (e) {
      logger.e('Failed to get git log: $e');
      throw Exception('Failed to get git log: $e');
    }
  }

  Future<List<GitBranch>> getBranches(String path) async {
    try {
      final result = await _sshService.executeCommand(
        'cd "$path" && git branch -a --format="%(refname:short)|%(HEAD)"',
      );

      final branches = <GitBranch>[];
      for (final line in result.split('\n')) {
        final parts = line.split('|');
        if (parts.isNotEmpty) {
          final name = parts[0];
          final isCurrent = parts.length > 1 && parts[1] == '*';
          final isRemote = name.startsWith('remotes/');
          
          branches.add(GitBranch(
            name: isRemote ? name.substring(8) : name,
            isCurrent: isCurrent,
            isLocal: !isRemote,
            remote: isRemote ? name.split('/')[1] : null,
          ));
        }
      }

      return branches;
    } catch (e) {
      logger.e('Failed to get branches: $e');
      throw Exception('Failed to get branches: $e');
    }
  }

  Future<String> getDiff(String path, {String? file, String? staged}) async {
    try {
      String command = 'cd "$path" && git diff';
      if (staged != null) command += ' --staged';
      if (file != null) command += ' -- "$file"';

      return await _sshService.executeCommand(command);
    } catch (e) {
      logger.e('Failed to get diff: $e');
      throw Exception('Failed to get diff: $e');
    }
  }

  Future<void> add(String path, String file) async {
    try {
      await _sshService.executeCommand('cd "$path" && git add "$file"');
      logger.i('Git add: $file');
    } catch (e) {
      logger.e('Failed to git add: $e');
      throw Exception('Failed to git add: $e');
    }
  }

  Future<void> addAll(String path) async {
    try {
      await _sshService.executeCommand('cd "$path" && git add .');
      logger.i('Git add all');
    } catch (e) {
      logger.e('Failed to git add all: $e');
      throw Exception('Failed to git add all: $e');
    }
  }

  Future<void> reset(String path, String file) async {
    try {
      await _sshService.executeCommand('cd "$path" && git reset HEAD "$file"');
      logger.i('Git reset: $file');
    } catch (e) {
      logger.e('Failed to git reset: $e');
      throw Exception('Failed to git reset: $e');
    }
  }

  Future<void> commit(String path, String message) async {
    try {
      await _sshService.executeCommand(
        'cd "$path" && git commit -m "${message.replaceAll('"', '\\"')}"',
      );
      logger.i('Git commit: $message');
    } catch (e) {
      logger.e('Failed to git commit: $e');
      throw Exception('Failed to git commit: $e');
    }
  }

  Future<void> push(String path, {String? remote, String? branch}) async {
    try {
      String command = 'cd "$path" && git push';
      if (remote != null) command += ' $remote';
      if (branch != null) command += ' $branch';

      await _sshService.executeCommand(command);
      logger.i('Git push');
    } catch (e) {
      logger.e('Failed to git push: $e');
      throw Exception('Failed to git push: $e');
    }
  }

  Future<void> pull(String path, {String? remote, String? branch}) async {
    try {
      String command = 'cd "$path" && git pull';
      if (remote != null) command += ' $remote';
      if (branch != null) command += ' $branch';

      await _sshService.executeCommand(command);
      logger.i('Git pull');
    } catch (e) {
      logger.e('Failed to git pull: $e');
      throw Exception('Failed to git pull: $e');
    }
  }

  Future<void> checkout(String path, String branch, {bool create = false}) async {
    try {
      String command = 'cd "$path" && git checkout';
      if (create) command += ' -b';
      command += ' $branch';

      await _sshService.executeCommand(command);
      logger.i('Git checkout: $branch');
    } catch (e) {
      logger.e('Failed to git checkout: $e');
      throw Exception('Failed to git checkout: $e');
    }
  }

  Future<void> fetch(String path, {String? remote}) async {
    try {
      String command = 'cd "$path" && git fetch';
      if (remote != null) command += ' $remote';

      await _sshService.executeCommand(command);
      logger.i('Git fetch');
    } catch (e) {
      logger.e('Failed to git fetch: $e');
      throw Exception('Failed to git fetch: $e');
    }
  }

  Future<void> stash(String path, {String? message}) async {
    try {
      String command = 'cd "$path" && git stash';
      if (message != null) {
        command += ' push -m "${message.replaceAll('"', '\\"')}"';
      }

      await _sshService.executeCommand(command);
      logger.i('Git stash');
    } catch (e) {
      logger.e('Failed to git stash: $e');
      throw Exception('Failed to git stash: $e');
    }
  }

  Future<void> stashPop(String path, {int index = 0}) async {
    try {
      await _sshService.executeCommand('cd "$path" && git stash pop stash@{$index}');
      logger.i('Git stash pop');
    } catch (e) {
      logger.e('Failed to git stash pop: $e');
      throw Exception('Failed to git stash pop: $e');
    }
  }
}

final gitServiceProvider = Provider<GitService>((ref) {
  final sshService = ref.watch(sshServiceProvider);
  return GitService(sshService);
});

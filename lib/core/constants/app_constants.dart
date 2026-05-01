class AppConstants {
  AppConstants._();

  static const String appName = 'AI Coder';
  static const String appVersion = '1.0.0';

  static const String hiveBoxPrefix = 'ai_coder_';
  static const String sshConnectionsBox = '${hiveBoxPrefix}ssh_connections';
  static const String projectsBox = '${hiveBoxPrefix}projects';
  static const String aiConfigsBox = '${hiveBoxPrefix}ai_configs';
  static const String conversationsBox = '${hiveBoxPrefix}conversations';
  static const String settingsBox = '${hiveBoxPrefix}settings';

  static const int defaultSshPort = 22;
  static const int defaultConnectionTimeout = 30;
  static const int keepAliveInterval = 30;

  static const double defaultTemperature = 0.7;
  static const int defaultMaxTokens = 4096;

  static const List<String> supportedLanguages = [
    'dart',
    'javascript',
    'typescript',
    'python',
    'java',
    'kotlin',
    'swift',
    'go',
    'rust',
    'c',
    'cpp',
    'csharp',
    'ruby',
    'php',
    'html',
    'css',
    'json',
    'yaml',
    'markdown',
    'sql',
    'shell',
    'dockerfile',
  ];

  static const Map<String, String> languageExtensions = {
    'dart': '.dart',
    'javascript': '.js',
    'typescript': '.ts',
    'python': '.py',
    'java': '.java',
    'kotlin': '.kt',
    'swift': '.swift',
    'go': '.go',
    'rust': '.rs',
    'c': '.c',
    'cpp': '.cpp',
    'csharp': '.cs',
    'ruby': '.rb',
    'php': '.php',
    'html': '.html',
    'css': '.css',
    'json': '.json',
    'yaml': '.yaml',
    'markdown': '.md',
    'sql': '.sql',
    'shell': '.sh',
    'dockerfile': 'Dockerfile',
  };
}

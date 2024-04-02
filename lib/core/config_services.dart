class ConfigService {
  String get flavorName {
    return const String.fromEnvironment('app.flavor');
  }

  bool get isDev {
    return const bool.fromEnvironment('dev');
  }

  bool get isRelease {
    return const bool.fromEnvironment('release');
  }
}

enum AppLanguage { en, vi }

String kLanguage = 'kLanguage';

extension AppLanguageEx on AppLanguage {
  bool get isEnglish => this == AppLanguage.en;

  String get keyValue {
    switch (this) {
      case AppLanguage.vi:
        return 'vi';
      default:
        return 'en';
    }
  }

  static AppLanguage fromValue(String? value) {
    if (value == AppLanguage.vi.keyValue) {
      return AppLanguage.vi;
    }
    return AppLanguage.en;
  }

  String get displayName {
    switch (this) {
      case AppLanguage.vi:
        return 'Tiếng Việt';
      case AppLanguage.en:
        return 'English';
      default:
        return '';
    }
  }
}

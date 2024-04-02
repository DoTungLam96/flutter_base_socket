import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/base/shared_preferences_manager.dart';
import 'package:new_base_with_socket/theme/app_language.dart';
import 'package:new_base_with_socket/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState extends Equatable {
  const AppState({required this.themeType, required this.appLanguage});

  final ThemeType themeType;

  final AppLanguage appLanguage;
  @override
  List<Object?> get props => <Object?>[themeType, appLanguage];
}

class AppCubit extends Cubit<AppState> {
  AppCubit(AppState appState)
      : super(const AppState(
            themeType: ThemeType.light, appLanguage: AppLanguage.vi));
  final SharedPreferencesManager _sharedPreferencesManager =
      GetIt.instance.get();

  String _themeToString(ThemeType theme) {
    return theme.value;
  }

  String _languageToString(AppLanguage language) {
    return language.keyValue;
  }

  ThemeType getThemeDefault() {
    final String themValue =
        _sharedPreferencesManager.getString(kTheme) ?? ThemeType.light.value;
    final theme = ThemeTypeEx.fromValue(themValue);

    return theme;
  }

  AppLanguage getAppLanguageDefault() {
    final String value = _sharedPreferencesManager.getString(kLanguage) ??
        AppLanguage.vi.keyValue;
    final language = AppLanguageEx.fromValue(value);

    return language;
  }

  Future<bool> saveLanguage(String langCode) {
    return SharedPreferences.getInstance().then((SharedPreferences shared) {
      return shared.setString(kLanguage, langCode);
    });
  }

  Future<bool> saveTheme(String themeCode) {
    return SharedPreferences.getInstance().then((SharedPreferences shared) {
      return shared.setString(kTheme, themeCode);
    });
  }

  void changeTheme({required ThemeType theme}) {
    saveTheme(_themeToString(theme));
    emit(AppState(themeType: theme, appLanguage: getAppLanguageDefault()));
  }

  void changeLanguage({required AppLanguage appLanguage}) {
    saveLanguage(_languageToString(appLanguage));
    emit(
      AppState(
        themeType: getThemeDefault(),
        appLanguage: appLanguage,
      ),
    );
  }

  void applySetting({
    required ThemeType theme,
    required AppLanguage appLanguage,
  }) {
    emit(
      AppState(themeType: theme, appLanguage: appLanguage),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_base_with_socket/core/app_service.dart';
import 'package:new_base_with_socket/theme/color_custom.dart';

import 'typography.dart';

enum ThemeType {
  light,
  dark,
}

String kTheme = 'kTheme';

extension ThemeTypeEx on ThemeType {
  bool get isDark => this == ThemeType.dark;

  String get value {
    if (this == ThemeType.dark) {
      return 'dark';
    }
    return 'light';
  }

  static ThemeType fromValue(String? value) {
    if (value == ThemeType.dark.value) {
      return ThemeType.dark;
    }
    return ThemeType.light;
  }

  ThemeData get data => isDark ? DarkTheme.data : LightTheme.data;
}

class LightTheme {
  static ThemeData data = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors.light,
      CustomTypography.light
    ],
  );
}

class DarkTheme {
  static ThemeData data = ThemeData(
    extensions: <ThemeExtension>[CustomColors.dark, CustomTypography.dark],
  );
}

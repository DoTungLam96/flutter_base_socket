// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/core/app_service.dart';
import 'package:new_base_with_socket/theme/app_language.dart';
import 'package:new_base_with_socket/theme/app_theme.dart';
import 'package:new_base_with_socket/theme/color_custom.dart';

import 'typography.dart';

class CustomThemeModel {
  const CustomThemeModel({
    required this.colors,
  });

  final CustomColors colors;
}

final AppCubit appCubit = GetIt.instance<AppCubit>();

extension TextStyleCopy on TextStyle? {
  TextStyle? copyColor(Color color) {
    return this?.copyWith(color: color);
  }
}

class ThemeUtils {
  static CustomColors get color =>
      appCubit.state.themeType.data.extension<CustomColors>()!;

  static CustomColors colorTheme(BuildContext context) =>
      Theme.of(context).extension<CustomColors>() ?? color;

  static CustomTypography get textStyle =>
      appCubit.state.themeType.data.extension<CustomTypography>()!;

  static CustomTypography textTheme(BuildContext context) =>
      Theme.of(context).extension<CustomTypography>() ??
      appCubit.state.themeType.data.extension<CustomTypography>()!;

  static ThemeType get currentTheme => appCubit.state.themeType;

  static AppLanguage get currentLanguage => appCubit.state.appLanguage;
}

CustomColors IBColor = ThemeUtils.color;

extension ThemeExtensionEx on BuildContext {
  CustomColors get colors => ThemeUtils.colorTheme(this);
}

class Pair<L, R> {
  Pair(this.left, this.right);

  final L left;
  final R right;

  @override
  String toString() => 'Pair[$left, $right]';
}

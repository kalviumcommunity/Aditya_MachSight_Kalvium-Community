import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get dark {
    const colorScheme = ColorScheme.dark(
      primary: AppColors.accent,
      onPrimary: AppColors.primaryText,
      secondary: AppColors.accent,
      onSecondary: AppColors.primaryText,
      surface: AppColors.surface,
      onSurface: AppColors.primaryText,
    );

    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.primaryText,
        elevation: 0,
        centerTitle: false,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.surface,
        indicatorColor: AppColors.accent.withValues(alpha: 0.22),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final color = states.contains(WidgetState.selected)
              ? AppColors.primaryText
              : AppColors.secondaryText;
          return TextStyle(color: color, fontWeight: FontWeight.w600);
        }),
      ),
      cardTheme: const CardThemeData(
        color: AppColors.elevatedSurface,
        margin: EdgeInsets.zero,
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(color: AppColors.primaryText),
        bodyMedium: TextStyle(color: AppColors.secondaryText),
      ),
    );
  }
}

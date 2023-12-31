import 'package:flutter/material.dart';

import 'package:flagger_app/gen/colors.gen.dart';

ThemeData customTheme() {
  // TODO(username): テーマ切り替える.
  final base = ThemeData.light();
  return base.copyWith(
    primaryColor: AppColor.secondColor,
    cardColor: Colors.white,
    scaffoldBackgroundColor: AppColor.firstColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.accentColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.secondColor,
      selectionColor: AppColor.firstColor,
      selectionHandleColor: AppColor.firstColor,
    ),
    textTheme: _buildStaffTextTheme(base.textTheme),
    primaryTextTheme: _buildStaffTextTheme(base.primaryTextTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColor.accentColor,
        side: const BorderSide(
          color: AppColor.secondColor,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColor.accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

TextTheme _buildStaffTextTheme(TextTheme textTheme) {
  return textTheme.copyWith(
    displayLarge: textTheme.displayLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: textTheme.displayMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: textTheme.displaySmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: textTheme.headlineLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: textTheme.headlineMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: textTheme.headlineSmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: textTheme.bodyLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 16,
    ),
    bodyMedium: textTheme.bodyMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 14,
    ),
    bodySmall: textTheme.bodySmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 12,
    ),
    labelLarge: textTheme.labelLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w200,
    ),
    labelMedium: textTheme.labelMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 14,
      fontWeight: FontWeight.w200,
    ),
    labelSmall: textTheme.labelSmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w200,
    ),
  );
}

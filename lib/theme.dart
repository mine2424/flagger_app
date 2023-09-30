// // Flutter imports:
// import 'package:flutter/material.dart';

// // Project imports:
// import 'package:torema_staff/gen/colors.gen.dart';

// ThemeData buildStaffTheme() {
//   final base = ThemeData.light();
//   return base.copyWith(
//     primaryColor: ToremaStaffColor.powderBlue,
//     cardColor: Colors.white,
//     scaffoldBackgroundColor: ToremaStaffColor.lightGray,
//     textSelectionTheme: const TextSelectionThemeData(
//       cursorColor: ToremaStaffColor.steelBlue,
//       selectionColor: ToremaStaffColor.lightGray,
//       selectionHandleColor: ToremaStaffColor.steelBlue,
//     ),
//     textTheme: _buildStaffTextTheme(base.textTheme),
//     primaryTextTheme: _buildStaffTextTheme(base.primaryTextTheme),
//     inputDecorationTheme: InputDecorationTheme(
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: ToremaStaffColor.steelBlue,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//     outlinedButtonTheme: OutlinedButtonThemeData(
//       style: OutlinedButton.styleFrom(
//         backgroundColor: ToremaStaffColor.steelBlue,
//         side: const BorderSide(
//           color: ToremaStaffColor.steelBlue,
//           width: 2,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         backgroundColor: ToremaStaffColor.steelBlue,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//     filledButtonTheme: FilledButtonThemeData(
//       style: FilledButton.styleFrom(
//         backgroundColor: ToremaStaffColor.steelBlue,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//   );
// }

// TextTheme _buildStaffTextTheme(TextTheme textTheme) {
//   return textTheme.copyWith(
//     displayLarge: textTheme.displayLarge!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 32,
//       fontWeight: FontWeight.bold,
//     ),
//     displayMedium: textTheme.displayMedium!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 28,
//       fontWeight: FontWeight.bold,
//     ),
//     displaySmall: textTheme.displaySmall!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 24,
//       fontWeight: FontWeight.bold,
//     ),
//     headlineLarge: textTheme.headlineLarge!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 20,
//       fontWeight: FontWeight.bold,
//     ),
//     headlineMedium: textTheme.headlineMedium!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//     ),
//     headlineSmall: textTheme.headlineSmall!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 14,
//       fontWeight: FontWeight.bold,
//     ),
//     bodyLarge: textTheme.bodyLarge!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 16,
//     ),
//     bodyMedium: textTheme.bodyMedium!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 14,
//     ),
//     bodySmall: textTheme.bodySmall!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 12,
//     ),
//     labelLarge: textTheme.labelLarge!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 16,
//       fontWeight: FontWeight.w200,
//     ),
//     labelMedium: textTheme.labelMedium!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 14,
//       fontWeight: FontWeight.w200,
//     ),
//     labelSmall: textTheme.labelSmall!.copyWith(
//       color: ToremaStaffColor.toremaBlack,
//       fontSize: 12,
//       fontWeight: FontWeight.w200,
//     ),
//   );
// }

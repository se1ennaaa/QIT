import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Themes
enum ThemeType {
  light,
  dark;

  bool get isLight => this == light;
  bool get isDark => this == dark;
}

class AppTheme {
  static const defaultType = ThemeType.light;
  static final defaultTheme = AppTheme.fromType(defaultType);

  late ThemeType type;
  bool isDark;
  late Color primaryColor;
  late Color onPrimaryColor;
  late Color bgColor;
  late Color surface;
  late Color bottomNavBarColor;

  AppTheme({this.isDark = false}) {}

  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(isDark: false)
          ..type = t
          ..bottomNavBarColor = const Color(0xffffffff)
          ..primaryColor = const Color(0xFF9605AC)
          ..onPrimaryColor = const Color(0xFFFFFFFF)
          ..bgColor = const Color(0xFFF5F5F5)
          ..surface = const Color(0xFFF0F0F0);

      case ThemeType.dark:
        return AppTheme(isDark: true)
          ..type = t
          ..bottomNavBarColor = const Color(0xff2b2b2b)
          ..primaryColor = const Color(0xFF9605AC)
          ..onPrimaryColor = const Color(0xFFFFFFFF)
          ..bgColor = const Color(0xFF191919)
          ..surface = const Color(0xFF2B2B2B);
    }
  }

  ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: bgColor,
      snackBarTheme: SnackBarThemeData(
        actionTextColor: primaryColor,
      ),
      cardTheme: CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      textTheme: GoogleFonts.ubuntuTextTheme(),
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: primaryColor,
        selectionHandleColor: Colors.transparent,
        selectionColor: primaryColor,
      ),
      buttonTheme: ButtonThemeData(
        height: 55,
        buttonColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF9605AC),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: TextStyle(
            fontSize: 16,
            color: onPrimaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        color: bgColor,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        constraints: BoxConstraints(minHeight: 56, maxHeight: 100),
        contentPadding: EdgeInsets.only(
          top: 18,
          bottom: 18,
          left: 16,
          right: 16,
        ),
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Color(0xFFC9C9C9),
        ),
        filled: true,
        fillColor: bgColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 4,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFCF95D8),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFCF95D8),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ThemeData().colorScheme.error,
            width: 1,
          ),
        ),
      ),
      primaryColor: primaryColor,
    );
  }

  // Color shift(Color c, double amt) {
  //   amt *= (isDark ? -1 : 1);
  //   var hslc = HSLColor.fromColor(c); // Convert to HSL
  //   double lightness =
  //       (hslc.lightness + amt).clamp(0, 1.0).toDouble(); // Add/Remove lightness
  //   return hslc.withLightness(lightness).toColor(); // Convert back to Color
  // }
}

import 'package:flutter/material.dart';

class ThemeColors {
  static const Color clrBlack = Color(0xFF000000);
  static const Color clrBlack50 = Color(0xFF1C222B);
  static const Color clrBlack100 = Color(0xFF303A49);
  static const Color clrWhite = Color(0xFFffffff);
  static const Color clrTransparent = Color(0x00ffffff);
  static const Color clrIcon = Color(0xFFAFB9CA);
  static const Color clrBlue50 = Color(0xFF909DB5);
  static const Color clrWhite50 = Color(0xFFF7F8FA);
  static const Color clrBorder = Color(0xFFCED3DE);
  static const Color clrTag = Color(0xFF596A86);
  static const Color clrSend = Color(0xFF919EB6);
  static const Color clrTeal = Color(0xFF01B99F);
}

class ThemeFonts {
  static const String notoSans = 'NotoSans';
  static const String roboto = 'Roboto';
}

class AppTheme {
  AppBarTheme appBarTheme() => const AppBarTheme(
        elevation: 0,
        backgroundColor: ThemeColors.clrWhite,
        foregroundColor: ThemeColors.clrBlack50,
      );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pembukuan_apk/utils/constant/const_color.dart';

class StyleTheme {
  static ThemeData themeData() {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.green,
      primaryColor: qGreen,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      //   titleLarge: TextStyle(
      //     fontSize: 24,
      //     color: qBlack,
      //     fontWeight: FontWeight.w700,
      //     letterSpacing: 1,
      //   ),
      //   titleMedium: TextStyle(
      //     fontSize: 18,
      //     color: qBlack,
      //     fontWeight: FontWeight.w700,
      //     letterSpacing: 1,
      //   ),
      //   bodySmall: const TextStyle(
      //     fontSize: 11,
      //     fontWeight: FontWeight.w400,
      //     color: Colors.black54,
      //   ),
      //   bodyMedium: const TextStyle(
      //     fontSize: 14,
      //     fontWeight: FontWeight.w500,
      //     color: Colors.black,
      //   ),
      //   labelMedium: TextStyle(
      //     color: qBlack,
      //     fontSize: 16,
      //     fontWeight: FontWeight.w500,
      //   ),
      // ),
      appBarTheme: AppBarTheme(
        color: qbackgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: qBlack,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      scaffoldBackgroundColor: qbackgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: primaryColor,
        selectedItemColor: qGreen2,
        unselectedItemColor: qBlack,
        showUnselectedLabels: true,
      ),
    );
  }
}

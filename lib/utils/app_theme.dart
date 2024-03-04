import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(){

  return ThemeData(

      scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Color.fromRGBO(0, 0, 0, 1),
      ),

      ///app text style
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: const Color.fromRGBO(0, 0, 0, 1),
          fontSize: GoogleFonts.inter(fontSize: 30).fontSize,
          fontFamily: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
          ).fontFamily,
        ),
        displayMedium: TextStyle(
          color: const Color.fromRGBO(0, 0, 0, 1),
          fontSize: GoogleFonts.inter(fontSize: 22).fontSize,
          fontFamily: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
          ).fontFamily,
        ),
        displaySmall: TextStyle(
            color: const Color.fromRGBO(124, 124, 124, 1),
            fontSize: GoogleFonts.inter(fontSize: 12).fontSize,
            fontFamily: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
            ).fontFamily),

        headlineMedium: TextStyle(
          color: const Color.fromRGBO(0, 0, 0, 1),
          fontSize: GoogleFonts.inter(fontSize: 14).fontSize,
          fontFamily: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
          ).fontFamily,
        ),
      ),

      ///app button style
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor:const Color.fromRGBO(0, 0, 0, 1),
              textStyle: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ))),

      ///app input field
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        isDense: true,
        filled: true,
        suffixIconColor: Colors.black,
        fillColor: const Color.fromRGBO(241, 241, 241, 1),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
        focusedErrorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),

      ),

      textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: const Color.fromRGBO(0, 0, 0, 1),
              textStyle: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize:
                GoogleFonts.inter(fontSize: 13).fontSize,
                fontFamily: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                ).fontFamily,
              )
          )
      )
  );
}
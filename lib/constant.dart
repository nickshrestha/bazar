// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryBackground = Color.fromARGB(255, 255, 255, 255);
const secondaryBackground = Color.fromARGB(255, 255, 255, 255);

const primaryColor = Color.fromARGB(255, 255, 255, 255);
const secondaryColor = Color.fromARGB(255, 0, 0, 0);
const tertiaryColor = Color.fromARGB(255, 151, 30, 30);

const primaryText = Color.fromARGB(255, 0, 0, 0);








 String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';


  TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
   TextStyle get title2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
   TextStyle get title3 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
 TextStyle get subtitle1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF757575),
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
 TextStyle get subtitle2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF616161),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF424242),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );

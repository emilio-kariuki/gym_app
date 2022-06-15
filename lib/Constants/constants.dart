import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBackgroundColor = Color(0xFF5F75DC);
const Color textColor = Color.fromARGB(255, 78, 77, 77);
const Color white = Colors.white;

TextStyle get normalText {
  return GoogleFonts.lato(
      textStyle: const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 38, 38, 38),
  ));
}

TextStyle get subText {
  return GoogleFonts.lato(
      textStyle: const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 78, 77, 77),
  ));
}

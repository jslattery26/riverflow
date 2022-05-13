import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  primaryColor: Colors.deepPurple,
  primarySwatch: Colors.deepPurple,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.deepPurple,
      shape: const StadiumBorder(),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: const BorderSide(
          color: Colors.deepPurple,
          width: 1,
        )),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: const BorderSide(
          color: Colors.deepPurple,
          width: 1,
        )),
  ),
  textTheme: GoogleFonts.firaCodeTextTheme(ThemeData.light().textTheme),
);

//dark
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  primarySwatch: Colors.deepPurple,
  elevatedButtonTheme: lightTheme.elevatedButtonTheme,
  textButtonTheme: lightTheme.textButtonTheme,
  inputDecorationTheme: lightTheme.inputDecorationTheme,
  textTheme: GoogleFonts.firaCodeTextTheme(ThemeData.dark().textTheme),
);

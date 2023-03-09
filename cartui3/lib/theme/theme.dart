import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

ThemeData themeData1 = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  primarySwatch: Colors.blue,
  colorScheme: colorScheme,
 
  textTheme: textTheme,
  cardTheme: CardTheme(
      surfaceTintColor: Colors.black,
      shadowColor: colorScheme.secondary,
      color: colorScheme.primary,
      elevation: 150,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      )),
);


TextTheme textTheme = TextTheme(
  displaySmall: TextStyle(
      color: colorScheme.onPrimary, fontSize: 10,),
  // titleMedium: GoogleFonts.openSans(
  //     textStyle: const TextStyle(fontWeight: FontWeight.w400),
  //     color: colorScheme.onPrimary),
  titleMedium: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
);

ColorScheme colorScheme = const ColorScheme.light(
  primaryContainer: Color.fromARGB(96, 255, 173, 129),
  primary: Color.fromARGB(170, 0, 0, 0),
  onPrimary: Colors.white,
  secondary: Colors.white,
  // secondary: Color.fromARGB(170, 175, 239, 178),
  onSecondary: Colors.white,
  tertiary: Color.fromARGB(46, 0, 0, 0)  
);

import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Cairo',
  

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: HexColor('#e9e9e9'),
    iconColor: HexColor('#a3a3a3'),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: .7,
        color: AppColors.primary,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: AppColors.primary,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
    ),
  ),

  appBarTheme: const AppBarTheme(
    titleSpacing: 16.0,
    color: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    elevation: 0.0,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.primary,
    ),
    bodySmall: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyMedium:  const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  ),
);

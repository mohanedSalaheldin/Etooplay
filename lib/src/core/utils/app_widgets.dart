import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultTextFormField({
  required String hint,
  required TextInputType keyboardType,
  required IconData suffixIcon,
  IconData? prefixIcon,
}) =>
    TextFormField(
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: AppColors.primary,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,

        hintStyle: const TextStyle(),

        prefixIcon: Icon(
          suffixIcon,
          color: HexColor('#a3a3a3'),
          size: 32.0,
        ),
        suffixIcon: Icon(
          prefixIcon,
          color: HexColor('#a3a3a3'),
          size: 32.0,
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     width: .7,
        //     color: AppColors.primary,
        //   ),
        //   borderRadius: const BorderRadius.all(
        //     Radius.circular(15),
        //   ),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     width: 1.5,
        //     color: AppColors.primary,
        //   ),
        //   borderRadius: const BorderRadius.all(
        //     Radius.circular(15),
        //   ),
        // ),
      ),
    );

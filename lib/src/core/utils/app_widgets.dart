import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// TextEditingController

Widget defaultTextFormField({
  required String? hint,
  required TextInputType keyboardType,
  required IconData? suffixIcon,
  required controller,
  IconData? prefixIcon,
  bool ispassword = false,
}) =>
    SizedBox(
      height: 70.0,
      child: TextFormField(
        controller: controller,
        obscureText: ispassword,
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
        ),
      ),
    );
Widget horizentalSizedBox() => const SizedBox(
      width: 20.0,
    );
Widget verticalSizedBox() => const SizedBox(
      height: 20.0,
    );
Widget defaultButton({
  required Widget content,
  required void Function()? onpressed,
  Color? color,
}) =>
    Container(
      height: 70.0,
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: MaterialButton(
        onPressed: onpressed,
        color: color ?? AppColors.primary,
        child: content,
      ),
    );

import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_colors.dart';

Widget textFieldWidget({
  required TextEditingController controller,
  required Function validator,
  bool obscureText = false,
  required String hintText,
  required TextInputType textInputType,
  required Widget prefixIcon,
  Widget? suffixIcon,
}) {
  return TextFormField(
    style: const TextStyle(color: Colors.black),
    controller: controller,
    validator: (value) => validator(value),
    obscureText: obscureText ? true : false,
    cursorColor: Colors.black,
    keyboardType: textInputType,
    decoration: InputDecoration(
      fillColor: MyColors.kBackGroundColor,
      filled: true,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: hintText,
      hintStyle: const TextStyle(
        fontFamily: 'DINNEXTLTARABIC',
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_colors.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';

Widget elevatedButtonWidget({
  required Function() onPressed,
  required String text,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
        primary: MyColors.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center),
    onPressed: onPressed,
    child: textUtils(
      text: text,
      color: Colors.white,
      fontWeight: FontWeight.w900,
      fontSize: 18,
    ),
  );
}

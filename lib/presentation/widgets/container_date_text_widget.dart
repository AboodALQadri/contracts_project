import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_colors.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';

Widget containerDateTextWidget({required String dateText}) {
  return Container(
    alignment: Alignment.center,
    height: 48,
    width: 120,
    decoration: BoxDecoration(
      color: MyColors.kGreyColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
    ),
    child: textUtils(
      text: dateText,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  );
}

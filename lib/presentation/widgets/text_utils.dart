import 'package:flutter/material.dart';

Widget textUtils({
  required String text,
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
  TextDecoration? underLine,
  TextOverflow? overFlow,
}) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'DINNEXTLTARABIC',
      decoration: underLine,
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      overflow: overFlow,
    ),
  );
}

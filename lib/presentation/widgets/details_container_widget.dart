import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_colors.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';

Widget detailsContainerWidget({
  required String textBondNumber,
  required String textBondDate,
  required String textClause,
  required String textPrice,
}) {
  return Container(
    height: 120,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.kBackGroundColor,
      borderRadius: BorderRadius.circular(6),
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              textUtils(
                text: 'رقم السند :',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              const SizedBox(
                width: 10,
              ),
              textUtils(
                text: textBondNumber,
                color: MyColors.kPrimaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              textUtils(
                text: 'تاريخ السند :',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              const SizedBox(
                width: 10,
              ),
              textUtils(
                text: textBondDate,
                color: MyColors.kGreyColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                overFlow: TextOverflow.ellipsis,
              ),
              SizedBox(width: 40,),
              textUtils(
                text: 'المبلغ  :',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              const SizedBox(
                width: 10,
              ),
              textUtils(
                text: textPrice,
                color: MyColors.kGreyColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                overFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              textUtils(
                text: 'البند :',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              textUtils(
                text: textClause,
                color: MyColors.kGreyColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                overFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_colors.dart';
import 'package:mahmoud/presentation/widgets/container_date_text_widget.dart';
import 'package:mahmoud/presentation/widgets/elevated_button_widget.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';

// Widget contractsContainerWidget({
//   required String textContract,
//   required String textPrice,
//   required String textRealEstate,
//   required String textUnit,
//   required Function() onPressed,
// }) {
//   return Container(
//     height: 240,
//     width: double.infinity,
//     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//     margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//     decoration: BoxDecoration(
//       color: MyColors.kBackGroundColor,
//       borderRadius: BorderRadius.circular(6),
//     ),
//     child: SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               textUtils(
//                 text: textContract,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//               textUtils(
//                 text: textPrice,
//                 color: MyColors.kPrimaryColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Row(
//             children: [
//               textUtils(
//                 text: 'إسم العقار :',
//                 color: Colors.black,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 13,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               textUtils(
//                 text: textRealEstate,
//                 color: MyColors.kGreyColor,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 12,
//                 overFlow: TextOverflow.ellipsis,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Row(
//             children: [
//               textUtils(
//                 text: 'إسم الوحدة :',
//                 color: Colors.black,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 13,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               textUtils(
//                 text: textUnit,
//                 color: MyColors.kGreyColor,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 12,
//                 overFlow: TextOverflow.ellipsis,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               containerDateTextWidget(
//                 dateText: '7/8/2022',
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               textUtils(
//                 text: 'حتى',
//                 color: Colors.black,
//                 fontWeight: FontWeight.w900,
//                 fontSize: 15,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               containerDateTextWidget(
//                 dateText: '1/1/2023',
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           elevatedButtonWidget(
//             onPressed: onPressed,
//             text: 'شاهد الدفعات',
//           ),
//         ],
//       ),
//     ),
//   );
// }

class ContractsContainer extends StatelessWidget {

  const ContractsContainer({
    Key? key,
    required this.textContract,
    required this.textPrice,
    required this.textRealEstate,
    required this.textUnit,
    required this.onPressed,
  }) : super(key: key);

  final String textContract;
  final String textPrice;
  final String textRealEstate;
  final String textUnit;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.kBackGroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textUtils(
                  text: textContract,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textUtils(
                  text: textPrice,
                  color: MyColors.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                textUtils(
                  text: 'إسم العقار :',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
                const SizedBox(
                  width: 10,
                ),
                textUtils(
                  text: textRealEstate,
                  color: MyColors.kGreyColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  overFlow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                textUtils(
                  text: 'إسم الوحدة :',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
                const SizedBox(
                  width: 10,
                ),
                textUtils(
                  text: textUnit,
                  color: MyColors.kGreyColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  overFlow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                containerDateTextWidget(
                  dateText: '7/8/2022',
                ),
                const SizedBox(
                  width: 10,
                ),
                textUtils(
                  text: 'حتى',
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                containerDateTextWidget(
                  dateText: '1/1/2023',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            elevatedButtonWidget(
              onPressed: onPressed,
              text: 'شاهد الدفعات',
            ),
          ],
        ),
      ),
    );
  }
}

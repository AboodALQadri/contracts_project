import 'package:flutter/material.dart';
import 'package:mahmoud/presentation/widgets/details_container_widget.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';

class ContractsDetails extends StatelessWidget {
  const ContractsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textUtils(
          text: 'العقد الأول',
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 24,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 635,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return detailsContainerWidget(
                  textBondNumber: '0000 0000 0000 0000',
                  textBondDate: '7/6/2022',
                  textPrice: '\$1500000',
                  textClause: 'textClause',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

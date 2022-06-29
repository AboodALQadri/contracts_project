import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_strings.dart';
import 'package:mahmoud/presentation/widgets/contracts_container.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';

class ContractsScreen extends StatefulWidget {
  const ContractsScreen({super.key});

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: textUtils(
          text: 'العقود',
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 24,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 630,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ContractsContainer(
                  textContract: 'العقد الأول',
                  textPrice: '\$500',
                  textRealEstate: 'عقار 1',
                  textUnit: 'gfcd4',
                  onPressed: () {
                    Navigator.pushNamed(context, contractsDetails);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

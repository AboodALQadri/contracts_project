import 'package:flutter/material.dart';
import 'package:mahmoud/constant/my_strings.dart';
import 'package:mahmoud/presentation/screens/auth/login_screen.dart';
import 'package:mahmoud/presentation/screens/contracts_details.dart';
import 'package:mahmoud/presentation/screens/contracts_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case contractsScreen:
        return MaterialPageRoute(
          builder: (context) => ContractsScreen(),
        );

      case contractsDetails:
        return MaterialPageRoute(
          builder: (context) => const ContractsDetails(),
        );
    }
    return null;
  }
}

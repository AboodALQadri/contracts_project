import 'package:flutter/material.dart';
import 'package:mahmoud/api/controller/auth_api_controller.dart';
import 'package:mahmoud/constant/my_pictures.dart';
import 'package:mahmoud/constant/my_strings.dart';
import 'package:mahmoud/presentation/widgets/elevated_button_widget.dart';
import 'package:mahmoud/presentation/widgets/text_field_widget.dart';
import 'package:mahmoud/presentation/widgets/text_utils.dart';
import 'package:mahmoud/utils/api_response.dart';
import 'package:mahmoud/utils/helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  final TextEditingController _emailTextController = TextEditingController();

  final TextEditingController _passwordTextController = TextEditingController();

  bool _isVisibility = true;

  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: textUtils(
          text: 'تسجيل الدخول',
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: Form(
        key: fromKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
            child: Column(
              children: [
                Container(
                  height: 264,
                  width: 290,
                  alignment: Alignment.center,
                  child: Image.asset(MyPictures.loginLogo),
                ),
                const SizedBox(
                  height: 45,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textUtils(
                      text: 'البريد الألكتروني',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    textFieldWidget(
                      controller: _emailTextController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          showSnackBar(context,
                              message: 'ادخل البريد الألكتروني', error: true);

                          return 'لا يمكن أن يكون البريد الإلكتروني فارغًا';
                        }
                        return null;
                      },
                      hintText: 'you@example.com',
                      textInputType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.person_outline),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textUtils(
                      text: 'كلمة المرور',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    textFieldWidget(
                      controller: _passwordTextController,
                      obscureText: _isVisibility,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisibility = !_isVisibility;
                          });
                        },
                        icon: _isVisibility
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          showSnackBar(context,
                              message: 'ادخل كلمة المرور ', error: true);

                          return 'لا يمكن أن تكون كلمة المرور فارغة';
                        }
                        return null;
                      },
                      hintText: 'كلمة المرور',
                      textInputType: TextInputType.text,
                      prefixIcon: const Icon(Icons.lock_outline),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    elevatedButtonWidget(
                      text: 'تسجيل الدخول',
                      onPressed: () async {
                        if (fromKey.currentState!.validate()) {
                          showProgressIndicator(context);

                          String email = _emailTextController.text.trim();
                          String password = _passwordTextController.text;

                          // await _login();
                        }

                        // print(_login());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //
  // Future<void> _login() async {
  //   ApiResponse apiResponse = await AuthApiController().login(
  //       email: _emailTextController.text,
  //       password: _passwordTextController.text);
  //
  //   showSnackBar(context,
  //       message: apiResponse.message, error: !apiResponse.status);
  //
  //   if (apiResponse.status) {
  //     Navigator.pushReplacementNamed(context, contractsScreen);
  //   }
  // }

  void showProgressIndicator(BuildContext context) {
    AlertDialog alertDialog = const AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
        ),
      ),
    );
    showDialog(
      barrierColor: Colors.white.withOpacity(0),
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return alertDialog;
      },
    );
  }
}

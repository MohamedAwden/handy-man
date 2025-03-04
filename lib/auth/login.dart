import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman/auth/register.dart';
import 'package:handyman/widget/custom_button.dart';
import 'package:handyman/widget/custom_text_form_field.dart';

import '../utils/app_theme.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(flex: 2),
            Text(
              'Welcome to ',
              style: textTheme.titleLarge,
            ),
            SizedBox(
              height: 16,
            ),
            Image.asset(
              'assets/images/handyman.png',
            ),
            Spacer(flex: 1),
            Divider(
              color: Color(0xffC0C0C0),
              thickness: 1,
              indent: 19,
              endIndent: 19,
            ),
            Spacer(flex: 1),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: AppTheme.backGround.withOpacity(0.15),
              ),
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: email,
                    hintText: "Email",
                    validator: emailValidator,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomTextFormField(
                    controller: password,
                    hintText: "Password",
                    isPassword: true,
                    validator: validatePassword,
                    icon: Icon(
                      Icons.visibility_off,
                      color: AppTheme.grey,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    action: () {},
                    text: 'Login',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Don’t Have Account ? ',
                        style: textTheme.titleSmall,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Register.routeName);
                        },
                        child: Text(
                          'Create Account',
                          style: textTheme.titleSmall!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppTheme.white),
                        borderRadius: BorderRadius.circular(16),
                        color: AppTheme.black),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 24,
                          width: 24,
                        ),
                        Spacer(),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Continue with Google',
                          style: textTheme.labelSmall!
                              .copyWith(color: AppTheme.white),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? emailValidator(String? email) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email!);
    if (!emailValid) {
      return 'please enter valid email';
    } else if (email.isEmpty) {
      return 'email is required';
    }
    return null;
  }

  String? validatePassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }
}

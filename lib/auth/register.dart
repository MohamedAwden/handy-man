import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman/auth/type_of_user.dart';
import 'package:handyman/widget/custom_button.dart';
import 'package:handyman/widget/custom_text_form_field.dart';

import '../utils/app_theme.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController name = TextEditingController();

  static const String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Stack(
        children: [
          Positioned(
            right: -80,
            bottom: 80,
            child: Image.asset('assets/images/background_image.png'),

          ),
          Positioned(
            right: -80,
            bottom: 80,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
              child: Container(

              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to ',
                  style: textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/handyman.png',
                ),
              ),
              SizedBox(height: 50,),

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppTheme.backGround.withOpacity(0.15),
                  ),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: name,
                        hintText: "Name",
                        isPassword: true,
                        validator: validatePassword,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        controller: email,
                        hintText: "Email",
                        validator: emailValidator,
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
                      ),
                      CustomTextFormField(
                        controller: password,
                        hintText: "Confirm Password",
                        isPassword: true,
                        validator: validatePassword,
                        icon: Icon(
                          Icons.visibility_off,
                          color: AppTheme.grey,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),

                      CustomButton(
                        action: () {
                          Navigator.pushReplacementNamed(context, TypeOfUser.routeName);
                        },
                        text: 'Create Account',
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
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

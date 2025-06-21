import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // ✅ Added to use context.read<AuthCubit>()
import 'package:flutter_svg/svg.dart';
import 'package:handyman/auth/data/models/register_request.dart';
import 'package:handyman/auth/presentation/cubits/auth_cubits.dart';
import 'package:handyman/auth/presentation/screens/type_of_user.dart';
import 'package:handyman/widget/custom_button.dart';
import 'package:handyman/widget/custom_text_form_field.dart';

import '../../../utils/app_theme.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController(); // ✅ Added this for Confirm Password
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
              child: Container(),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to ',
                  style: textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/handyman.png',
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 32),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: AppTheme.backGround.withOpacity(0.15),
                    ),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: name,
                          hintText: "Name",
                          isPassword: false, // ✅ Changed from true to false — name is not a password field
                          validator: (value) => value == null || value.isEmpty
                              ? 'Name is required'
                              : null, // ✅ Correct validator for name
                        ),
                        SizedBox(height: 20),
                        CustomTextFormField(
                          controller: email,
                          hintText: "Email",
                          validator: emailValidator,
                        ),
                        SizedBox(height: 20),
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
                        SizedBox(height: 20),
                        CustomTextFormField(
                          controller: confirmPassword,
                          hintText: "Confirm Password",
                          isPassword: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm password';
                            }
                            if (value != password.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          }, // ✅ Added confirm password logic
                          icon: Icon(
                            Icons.visibility_off,
                            color: AppTheme.grey,
                          ),
                        ),
                        SizedBox(height: 80),
                        CustomButton(
                          action: () {
                            if (_formKey.currentState!.validate()) {
                              // ✅ Validate before submitting
                              context.read<AuthCubit>().register(
                                RegisterRequest(
                                  email: email.text,
                                  name: name.text,
                                  password: password.text,
                                  passwordConfirmation: confirmPassword.text,
                                ),
                              );
                              Navigator.pushReplacementNamed(
                                  context, TypeOfUser.routeName);
                              // ✅ Navigation moved inside validation block
                            }
                          },
                          widthOfElevatedButton: 1,
                          text: 'Create Account',
                        ),
                      ],
                    ),
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
    RegExp regex = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
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

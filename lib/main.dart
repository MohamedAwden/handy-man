import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handyman/auth/login.dart';
import 'package:handyman/auth/login.dart';
import 'package:handyman/auth/register_business.dart';
import 'package:handyman/auth/register_business.dart';
import 'package:handyman/auth/type_of_user.dart';
import 'package:handyman/auth/type_of_user.dart';
import 'package:handyman/pages/home_page.dart';
import 'package:handyman/utils/app_theme.dart';

import 'auth/register.dart';

void main(){
  
  runApp(HandyMan());
}
class HandyMan extends StatelessWidget {
  const HandyMan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName : (_)=>HomePage(),
        Login.routeName : (_)=>Login(),
        Register.routeName : (_)=>Register(),
        RegisterBusiness.routeName : (_)=>RegisterBusiness(),
        TypeOfUser.routeName : (_)=>TypeOfUser(),
      },
      initialRoute: HomePage.routeName,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

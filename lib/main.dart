import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handyman/pages/home_page.dart';
import 'package:handyman/utils/app_theme.dart';

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
      },
      initialRoute: HomePage.routeName,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

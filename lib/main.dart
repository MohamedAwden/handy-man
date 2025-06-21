import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // ✅ Added for BlocProvider
import 'package:handyman/auth/presentation/cubits/auth_cubits.dart'; // ✅ Import your AuthCubit
import 'package:handyman/auth/presentation/screens/login.dart';
import 'package:handyman/auth/presentation/screens/register_business.dart';
import 'package:handyman/auth/presentation/screens/type_of_user.dart';
import 'package:handyman/pages/home_page.dart';
import 'package:handyman/utils/app_theme.dart';
import 'package:handyman/widget/home_screen.dart';
import 'package:handyman/widget/success_screen.dart';
import 'package:handyman/widget/worker_details.dart';

import 'auth/presentation/screens/register.dart';

void main() {
  runApp(const HandyMan());
}

class HandyMan extends StatelessWidget {
  const HandyMan({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(), // ✅ Create your cubit here
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.routeName: (_) => HomePage(),
          Login.routeName: (_) => Login(),
          Register.routeName: (_) => Register(),
          RegisterBusiness.routeName: (_) => RegisterBusiness(),
          TypeOfUser.routeName: (_) => TypeOfUser(),
          HomeScreen.routeName: (_) => HomeScreen(),
          WorkerDetails.routeName: (_) => WorkerDetails(),
          SuccessScreen.routeName: (_) => SuccessScreen(),
        },
        initialRoute: HomePage.routeName,
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}

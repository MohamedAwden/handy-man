import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:handyman/auth/register_business.dart';

import '../utils/app_theme.dart';

class TypeOfUser extends StatelessWidget {
  const TypeOfUser({super.key});

  static const String routeName = '/type';

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: -80,
              bottom: 0,
              child: Image.asset('assets/images/background_image.png'),

            ),
            Positioned(
              right: -80,
              bottom: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
                child: Container(

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo_head_page.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Select Your Account Type',
                    style: textTheme.titleLarge!.copyWith(fontSize: 26),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "We want to tailor your experience so you 'll feel right at home.",
                    style: textTheme.titleSmall!.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppTheme.grey,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Buying freelance services',
                                  style: textTheme.titleLarge!.copyWith(
                                      fontSize: 20, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "I'm looking for talented people\nto work with.",
                                  style:
                                      textTheme.titleSmall!.copyWith(fontSize: 18),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset('assets/icons/icon_buy.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, RegisterBusiness.routeName);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 115,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppTheme.grey,

                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selling freelance services',
                                    style: textTheme.titleLarge!.copyWith(
                                        fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "I'd like to offer my services.",
                                    style:
                                    textTheme.titleSmall!.copyWith(fontSize: 18),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Image.asset('assets/icons/icon_sell.png'),


                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Divider(
                    color: Color(0xffC0C0C0),
                    thickness: 1,
                    indent: 19,
                    endIndent: 19,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

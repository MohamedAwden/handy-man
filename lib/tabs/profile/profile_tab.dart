import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:handyman/utils/app_theme.dart';
import 'package:handyman/widget/custom_button.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Positioned(
          right: -80,
          child: Image.asset('assets/images/background_image.png'),
        ),
        Positioned(
          right: -80,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
            child: Container(),
          ),
        ),
        Positioned(
          top: 120,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(right:8 , left:8 ,bottom: 20,),
            margin: EdgeInsets.symmetric(horizontal: 8),
            //width: MediaQuery.sizeOf(context).width*99,
            decoration: BoxDecoration(
              color: AppTheme.backGround.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Settings',
                    style:
                        textTheme.titleMedium!.copyWith(color: AppTheme.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dark Mode', style: textTheme.titleSmall),
                    Switch(
                      value: true,
                      onChanged: (v) {},
                      activeTrackColor: AppTheme.green,
                    ),
                  ],
                ),
                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Language', style: textTheme.titleSmall),
                    DropdownButton(
                      items: [],
                      onChanged: (l) {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppTheme.white,
                      ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About Handyman's App", style: textTheme.titleSmall),
                    DropdownButton(
                      items: [],
                      onChanged: (l) {},
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppTheme.white,
                      ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
                Spacer(flex: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(action: () {}, text: 'Sign Out'),
                    CustomButton(action: () {}, text: '   Save    '),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Delete Account',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: AppTheme.red),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

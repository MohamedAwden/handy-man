import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handyman/utils/app_theme.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(flex: 2,),
          Image.asset('assets/images/second_onboarding.png', height:screenSize.height*.3 ,width: screenSize.width*.9,
            fit: BoxFit.cover,),
          Spacer(flex: 2,),
          Row(
            children: [
              Icon(Icons.check, size: 24, color: AppTheme.green,),
              Text('   Choose your Tasker by reviews, skills, and price' , style: textTheme.titleSmall,)
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.check, size: 24, color: AppTheme.green,),
              Text('   Choose your Tasker by reviews, skills, and price' , style: textTheme.titleSmall,)
            ],
          ),
          SizedBox(height: 15),

          Row(
            children: [
              Icon(Icons.check, size: 24, color: AppTheme.green,),
              Text('   Choose your Tasker by reviews, skills, and price' , style: textTheme.titleSmall,)
            ],
          ),

          Spacer(flex: 4,),
          SizedBox(height: 20),



        ],),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:handyman/widget/header_worker.dart';

class SuccessScreen extends StatelessWidget {
   SuccessScreen({super.key});

  static const String routeName = 'success';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return  Column(
      children: [HeaderWorker(),
        SizedBox(height: screenSize.height*0.2),
      Image.asset('assets/images/success.png'),
        SizedBox(height: screenSize.height*0.26),
        Text("A message has been sent to your email address with your HandyMan appointment." ,style: textTheme.titleSmall,textAlign: TextAlign.center,),
      ],
    );
  }
}

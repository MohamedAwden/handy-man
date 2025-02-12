import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(flex: 4,),
        Image.asset('assets/images/first_onboarding.png', height:screenSize.height*.3 ,width: screenSize.width*.9,
        fit: BoxFit.cover,),
          Spacer(),
          Text('Best Solution For\nEvery House Problem',style: textTheme.titleLarge,),
          Spacer(),
          Text('We work to ensure people comfort at their \nhome, and to provide the best and the \nfastest help at fair prices.',style: textTheme.titleSmall,),
     Spacer(flex: 4,),
          SizedBox(height: 20),



        ],),
    );
  }
}

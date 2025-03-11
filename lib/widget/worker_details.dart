import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handyman/widget/custom_button.dart';

import '../utils/app_theme.dart';

class WorkerDetails extends StatelessWidget {
  const WorkerDetails({super.key});

  static const String routeName = 'details/';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: AppTheme.white,

              ),
              width: double.infinity,
              child: Image.asset(
                'assets/images/carpenter_worker.png',
                height: screenSize.height * .3,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
                children: [
                  Text('JOHN MAYERS',style:textTheme.titleMedium?.copyWith(color: AppTheme.white) ,),
                  SizedBox(height: 6,),
                  Text('Carpentry Services',style:textTheme.titleSmall ,),

SizedBox(height: screenSize.height*.06,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Location", style: textTheme.titleSmall),
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
                  SizedBox(height: screenSize.height*.06,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Availability", style: textTheme.titleSmall),
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
                  SizedBox(height: screenSize.height*.06,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Reviews", style: textTheme.titleSmall),
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
                  SizedBox(height: screenSize.height*.06,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Phone Number", style: textTheme.titleSmall),
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
                  SizedBox(height: screenSize.height*.06,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment", style: textTheme.titleSmall),
                      DropdownButton(
                        items: [],
                        onChanged: (l) {},
                        icon: Icon(
                          Icons.payment_outlined,
                          color: AppTheme.white,

                        ),
                        underline: SizedBox(),

                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height*.06,),

                  CustomButton(action: (){}, text: "Reserve", )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:handyman/onboarding_pages/first_onboarding.dart';
import 'package:handyman/onboarding_pages/second_onboarding.dart';
import 'package:handyman/onboarding_pages/third_onboarding.dart';
import 'package:handyman/utils/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  String buttonText = 'Continue';
  int currentPageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111111),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index){
              currentPageIndex = index;
              if(index == 2){
                buttonText = 'Get Started';
              }
              setState(() {

              });
            },
            children: [
              FirstOnboarding(),
              SecondOnboarding(),
              ThirdOnboarding(),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ColorTransitionEffect(
                activeDotColor: AppTheme.green,
                dotHeight:10 ,
                dotWidth: 10,
              ),


            ),
          ),
          Positioned(
            bottom:60 ,
            right: 22,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                backgroundColor: AppTheme.yellow,

              ),
              onPressed: (){
                  if (currentPageIndex < 2) {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {

                  }
                  setState(() {});

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12,),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(

                      buttonText,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Icon(Icons.arrow_forward_outlined,color: AppTheme.black,),
                  ],

                ),
              ),),
          ),

        ],
      ),
    );
  }
}

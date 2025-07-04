import 'package:flutter/material.dart';
import 'package:handyman/widget/worker_details.dart';

import '../../utils/app_theme.dart';

class HomeTabItem extends StatelessWidget {
  const HomeTabItem({super.key, required this.borderRadius});
 final double borderRadius ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.pushNamed(context, WorkerDetails.routeName);},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 26,
            ),
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Image.asset(
              'assets/images/carpenter_worker.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 4,
          ),


        ],
      ),
    );
  }
}

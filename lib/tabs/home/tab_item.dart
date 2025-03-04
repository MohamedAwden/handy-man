import 'package:flutter/material.dart';
import 'package:handyman/models/category_model.dart';

import '../../utils/app_theme.dart';

class TabItem extends StatelessWidget {
  TabItem({super.key, required this.category});

  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:80 ,
          width: 80,
          padding: EdgeInsets.all(8),
          decoration:
          BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Image.asset(category.imageName,height: 48,width: 48,fit: BoxFit.fill,),
        ),
        SizedBox(height: 6),
        Text(category.name, style:Theme.of(context).textTheme.titleSmall,),
      ],
    );
  }
}

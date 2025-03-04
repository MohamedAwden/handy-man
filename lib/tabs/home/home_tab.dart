import 'package:flutter/material.dart';
import 'package:handyman/models/category_model.dart';
import 'package:handyman/tabs/home/comment_tab.dart';
import 'package:handyman/tabs/home/home_tab_item.dart';
import 'package:handyman/tabs/home/tab_item.dart';

import '../../utils/app_theme.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 16.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Daily Deals',
            style: textTheme.titleLarge,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*.29,
            child: ListView.separated(

              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  HomeTabItem(borderRadius: 16,),
                  CommentTab(),
                ],
              ),
              separatorBuilder: (context, index) => SizedBox(width: 24),
              itemCount: 10,
            ),
          ),
          Text(
            'Popular Categories',
            style: textTheme.titleLarge,
          ),
          SizedBox(
            height: 16,
          ),
          DefaultTabController(
            length: CategoryModel.categories.length,
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              tabs: CategoryModel.categories
                  .map((category) => TabItem(category: category))
                  .toList(),
            ),
          ),
              SizedBox(height: 30),
          Divider(
            color: AppTheme.grey,
            thickness: 1,
            indent: 19,
            endIndent: 19,
          ),
          SizedBox(height: 34,),
          Center(
            child: Text(
              '10% OFF',
              style: textTheme.titleLarge!.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
                '             Stay up to date with new products and exclusive \n                      offers. Your code will be displayed on the \n                   confirmation page and via email shortly after.',
                style: textTheme.titleSmall),
          ),
          SizedBox(height: 21,),
          Text(
            '        By registering you agree with our Terms & Conditions',
            style: textTheme.titleSmall,
          ),


        ],
      ),
    );
  }
}

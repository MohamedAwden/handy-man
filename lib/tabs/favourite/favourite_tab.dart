import 'package:flutter/material.dart';

import '../home/comment_tab.dart';
import '../home/home_tab_item.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeTabItem(borderRadius: 80,),
              CommentTab(),
            ],
          ),
      separatorBuilder: (context, index) => SizedBox(height: 24),
      itemCount: 10,
    );
  }
}

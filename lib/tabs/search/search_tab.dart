import 'package:flutter/material.dart';
import 'package:handyman/tabs/home/comment_tab.dart';
import 'package:handyman/utils/app_theme.dart';

import '../home/home_tab_item.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              fillColor: AppTheme.grey,
              filled: true,
              hintText: 'Search',
              hintStyle: Theme.of(context).textTheme.titleSmall,
              suffixIcon: Icon(
                Icons.search_outlined,
                color: AppTheme.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.grey),
              ),
            ),
          ),
          const SizedBox(height: 24),

          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeTabItem(borderRadius: 80,),
                  CommentTab(),
                ],
              ),
              separatorBuilder: (context, index) => SizedBox(height: 24),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:handyman/tabs/favourite/favourite_tab.dart';
import 'package:handyman/tabs/home/home_tab.dart';
import 'package:handyman/tabs/profile/profile_tab.dart';
import 'package:handyman/tabs/search/search_tab.dart';
import 'package:handyman/widget/nav_bar_icon.dart';

import '../utils/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home-navbar/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    FavouriteTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo_head_page.png',
                height: MediaQuery.sizeOf(context).height * 0.06,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(child: tabs[currentIndex]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'home_inactive'),
            activeIcon: NavBarIcon(imageName: 'home_active'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'search_inactive'),
            activeIcon: NavBarIcon(imageName: 'search_active'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'favourite_inactive'),
            activeIcon: NavBarIcon(imageName: 'favourite_active'),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(imageName: 'profile_inactive'),
            activeIcon: NavBarIcon(imageName: 'profile_active'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {
  NavBarIcon({super.key, required this.imageName});

  String imageName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/$imageName.png',
      height: 24,
      width: 24,
      fit: BoxFit.scaleDown,
    );
  }
}

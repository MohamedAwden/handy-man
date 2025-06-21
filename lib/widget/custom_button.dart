import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.action,
    required this.text,
    required this.widthOfElevatedButton,
  });

  void Function() action;
  String text;
  double widthOfElevatedButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        fixedSize: Size(
            MediaQuery.sizeOf(context).width * widthOfElevatedButton, 56),

        backgroundColor: AppTheme.yellow,
      ),
      onPressed: action,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

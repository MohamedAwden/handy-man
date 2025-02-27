import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, required this.action, required this.text});
  void Function() action;
  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: AppTheme.yellow,
      ),
      onPressed: action,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return TextFormField(
      style: TextStyle(color: AppTheme.grey,),

    );
  }
}

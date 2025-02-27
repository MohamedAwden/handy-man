import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class CustomTextFormField extends StatefulWidget {
   CustomTextFormField({
    super.key,
    required this.hintText,
     this.isPassword = false,
    required this.validator,
    required this.controller,
    this.icon,
     this.maxLine= 1,
  });

  final String hintText;
   bool isPassword;
  final String? Function(String?) validator;
final  TextEditingController controller;
Widget? icon;
   int? maxLine;


  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return TextFormField(
      controller: widget.controller,
 obscureText:widget.isPassword ,
       validator:widget.validator ,
      maxLines: widget.maxLine,


      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: textTheme.labelSmall,
        filled: true,
        suffixIcon:widget.icon != null? IconButton(onPressed: (){
          widget.isPassword =!widget.isPassword;
          if(widget.isPassword){
            widget.icon = Icon(Icons.visibility_off, color: AppTheme.grey,);
          }else{widget.icon = Icon(Icons.visibility, color: AppTheme.grey,);}
          setState(() {

          });
        }, icon: widget.icon!):null,
        fillColor: AppTheme.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

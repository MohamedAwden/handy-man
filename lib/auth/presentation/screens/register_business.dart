import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handyman/utils/app_theme.dart';
import 'package:handyman/widget/custom_button.dart';
import 'package:handyman/widget/custom_text_form_field.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widget/home_screen.dart';

class RegisterBusiness extends StatefulWidget {
  const RegisterBusiness({super.key});

  static const String routeName = '/businessRegister';

  @override
  State<RegisterBusiness> createState() => _RegisterBusinessState();
}

class _RegisterBusinessState extends State<RegisterBusiness> {
  XFile ? file;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final TextEditingController email = TextEditingController();

    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo_head_page.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Job Application',
                  style: textTheme.titleLarge!.copyWith(
                    fontSize: 36,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please complete the form below to\napply for a position with us.',
                  style: textTheme.titleMedium!.copyWith(color: AppTheme.white),
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  color: Color(0xffC0C0C0),
                  thickness: 1,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                          hintText: 'First Name',
                          validator: (p0) {},
                          controller: email),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextFormField(
                          hintText: 'Middle Name',
                          validator: (p0) {},
                          controller: email),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'Last Name',
                    validator: (p0) {},
                    controller: email),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'Street address',
                    validator: (p0) {},
                    controller: email),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                          hintText: 'City',
                          validator: (p0) {},
                          controller: email),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextFormField(
                          hintText: 'State or Province',
                          validator: (p0) {},
                          controller: email),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'Email', validator: (p0) {}, controller: email),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'Phone Number',
                    validator: (p0) {},
                    controller: email),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'Position Applied',
                    validator: (p0) {},
                    controller: email),
                SizedBox(
                  height: 24,
                ),
                Text(' Upload Three Pictures', style: textTheme.titleLarge?.copyWith(fontSize: 18),),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(                  color: AppTheme.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed:  () async{
                          ImagePicker image = ImagePicker();
                          file = await image.pickImage(source: ImageSource.gallery);
                          setState(() {
                            
                          });
                        },
                        icon: Icon(Icons.upload_outlined, color: AppTheme.black,),
                      ),
                      Text('Browse Files',style: textTheme.titleMedium?.copyWith(fontSize:20 ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(' Write your Jop Description', style: textTheme.titleLarge!.copyWith(fontSize: 18),),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'your job description',
                    maxLine: 5,
                    validator: (p0) {},
                    controller: email),
                SizedBox(
                  height: 24,
                ),
                CustomButton(action: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                }, text: 'Apply',widthOfElevatedButton: 1,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

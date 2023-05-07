import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';
import '../../Widgets/custom_text_field.dart';
import '../../Widgets/app_bar.dart';

class CheckYourEmail extends StatefulWidget {
  const CheckYourEmail({super.key});

  @override
  State<CheckYourEmail> createState() => _CheckYourEmailState();
}

class _CheckYourEmailState extends State<CheckYourEmail> {
  bool obsecure = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbarr(
                  text: 'Sign Up',
                  iconCross: false,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Please Check Your\nEmail",
                  style: TextStyle(
                      wordSpacing: 2.9,
                      height: 1.4,
                      fontSize: 25.sp,
                      color: black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                RichText(
                  text: TextSpan(
                      text: 'We just sent a verification mail to',
                      style: TextStyle(
                          wordSpacing: 2,
                          height: 1.3,
                          color: grey,
                          fontSize: 17.sp),
                      children: [
                        TextSpan(
                          text: '\n johndoe192@gmail.com',
                          style: TextStyle(
                              height: 1.6,
                              color: grey,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 250.h,
                  width: double.infinity,
                  child: Image.asset('assets/images/email.png'),
                ),
                SizedBox(
                  height: 90.h,
                ),
                Center(
                  child: Text(
                    "Resend Verification",
                    style: TextStyle(
                        height: 1.4,
                        fontSize: 16.sp,
                        color: primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.oneLastStep);
                  },
                  child: Button(
                    colors: primary,
                    button_text: 'Open Email App',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

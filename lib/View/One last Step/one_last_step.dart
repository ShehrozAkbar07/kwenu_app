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

class OneLastStep extends StatefulWidget {
  const OneLastStep({super.key});

  @override
  State<OneLastStep> createState() => _OneLastStepState();
}

class _OneLastStepState extends State<OneLastStep> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

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
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "One Last Step",
                  style: TextStyle(
                      fontSize: 25.sp,
                      color: black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "You will be required to provide an OTP for phone verification",
                  style: TextStyle(
                    height: 1.6,
                    fontSize: 17.sp,
                    color: grey,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextFieldd(
                  ab: obsecure,
                  controller: email,
                  text: 'First Name',
                ),
                SizedBox(
                  height: 19.h,
                ),
                CustomTextFieldd(
                  ab: obsecure,
                  controller: pass,
                  text: 'Last Name (Surname)',
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextFieldd(
                  ab: obsecure,
                  controller: email,
                  text: 'Phone Number',
                  prefixIcon: const Icon(
                    Icons.phone_outlined,
                    size: 20,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 260.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.signUp);
                  },
                  child: const Button(
                    colors: primary,
                    button_text: 'Continue',
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

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';

import '../../Widgets/custom_text_field.dart';
import '../../Widgets/app_bar.dart';
import '../Login/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cnfrmpass = TextEditingController();

  bool obsecure = false;
  bool obsecure2 = false;

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
                  "Let's Get You Onboard",
                  style: TextStyle(
                      fontSize: 25.sp,
                      color: black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "Sign up you fresh account in few mins",
                  style: TextStyle(
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
                  text: 'Email',
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    size: 20,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                CustomTextFieldd(
                  ab: obsecure,
                  controller: pass,
                  text: 'Password',
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          obsecure = !obsecure;
                        });
                      },
                      child: obsecure
                          ? const Icon(
                              Icons.visibility_off_outlined,
                              color: grey,
                            )
                          : const Icon(
                              Icons.visibility_outlined,
                              color: grey,
                            )),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    size: 20,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                CustomTextFieldd(
                  ab: obsecure2,
                  controller: cnfrmpass,
                  text: 'Confirm Password',
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          obsecure2 = !obsecure2;
                        });
                      },
                      child: obsecure2
                          ? const Icon(
                              Icons.visibility_off_outlined,
                              color: grey,
                            )
                          : const Icon(
                              Icons.visibility_outlined,
                              color: grey,
                            )),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    size: 20,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Sign Up With",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: grey,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialButton('assets/images/google.png'),
                    SocialButton('assets/images/apple.png'),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: grey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: Text(
                        " Sign In",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'By continuing,  you agree to the Kwenu Inc',
                        style: TextStyle(
                            height: 1.3, color: grey, fontSize: 14.sp),
                        children: [
                          TextSpan(
                            text: '\n   Terms and condition ',
                            style: TextStyle(color: primary, fontSize: 14.sp),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(color: grey, fontSize: 14.sp),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: primary, fontSize: 14.sp),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.checkYourEmail);
                  },
                  child: const Button(
                    colors: primary,
                    button_text: 'Sign Up',
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

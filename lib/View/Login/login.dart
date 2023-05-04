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
import '../../Widgets/app_bar.dart';
import '../../Widgets/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  text: 'Sign in',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize: 25.sp,
                      color: black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "Login existing account",
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
                              Icons.visibility_off,
                              color: grey,
                            )
                          : const Icon(
                              Icons.visibility,
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
                  "Continue With",
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
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: grey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.signUp);
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 130.h,
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
                    Get.toNamed(AppRoutes.signUp);
                  },
                  child: const Button(
                    button_text: 'Sign In',
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

Widget SocialButton(image) {
  return Container(
    height: 55.h,
    width: 160.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Center(
      child: Container(
        height: 25.h,
        width: 50.w,
        child: Image.asset(image),
      ),
    ),
  );
}

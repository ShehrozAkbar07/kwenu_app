import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/User%20Profile%20Edit/text_field.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';
import 'package:kwenu_app/Widgets/custom_buton.dart';
import '../../Const/color.dart';
import '../../Widgets/custom_circle_image.dart';

class UserProfileEdit extends StatefulWidget {
  const UserProfileEdit({super.key});

  @override
  State<UserProfileEdit> createState() => _UserProfileEditState();
}

class _UserProfileEditState extends State<UserProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Appbarr(
                  iconCross: false,
                  text: 'Profile',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        customCircleImage(
                            imgPath: 'assets/images/mike.png', radius: 40),
                        SizedBox(
                          height: 12.h,
                        )
                      ],
                    ),
                    Positioned(
                        top: 75.h,
                        left: 24.w,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/camera.png'),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text(
                    "Henry Geofrey",
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 23.sp,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "@henrygeofrey4",
                    style: TextStyle(
                      fontSize: 14.sp,
                      height: 1.5,
                      color: grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                field(
                  labelText: 'First Name',
                ),
                SizedBox(
                  height: 20.h,
                ),
                field(
                  labelText: 'Last Name',
                ),
                SizedBox(
                  height: 20.h,
                ),
                field(
                  prefixIcon: const Icon(
                    Icons.phone_outlined,
                    color: black,
                  ),
                  labelText: 'Phone',
                ),
                SizedBox(
                  height: 20.h,
                ),
                field(
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                    color: black,
                  ),
                  labelText: 'Email',
                ),
                SizedBox(
                  height: 70.h,
                ),
                Button(button_text: 'Save', colors: primary)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

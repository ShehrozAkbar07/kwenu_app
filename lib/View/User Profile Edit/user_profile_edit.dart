import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/User%20Profile%20Edit/text_field.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';
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
          child: Column(
            children: [
              Appbarr(
                iconCross: false,
                text: 'Profile',
              ),
              SizedBox(
                height: 50.h,
              ),
              customCircleImage(imgPath: 'assets/images/mike.png', radius: 40),
              Center(
                child: Text(
                  "Henry Geofrey",
                  style: TextStyle(
                      height: 2,
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
                prefixIcon: const Icon(
                  Icons.phone_outlined,
                  color: black,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              field(
                prefixIcon: const Icon(
                  Icons.mail_outline,
                  color: black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

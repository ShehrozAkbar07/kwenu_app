import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/User%20Profile/user_profile_a%5B%5Bbar.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Widgets/custom_circle_image.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              UserProfileAppbar(
                text: 'Profile',
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
              InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.userProfileEdit);
                  },
                  child: ProfileOptions(
                      'assets/images/up1.png', 'Edit Profile', false)),
              Divider(
                color: grey,
              ),
              ProfileOptions(
                  'assets/images/up2.png', 'Connected Cardss', false),
              Divider(
                color: grey,
              ),
              ProfileOptions('assets/images/up3.png', 'Security', false),
              Divider(
                color: grey,
              ),
              ProfileOptions(
                  'assets/images/up4.png', 'Statement & Report', false),
              Divider(
                color: grey,
              ),
              ProfileOptions('assets/images/up5.png', 'Contact Us', false),
              Divider(
                color: grey,
              ),
              ProfileOptions('assets/images/up6.png', 'Log Out', true),
              Divider(
                color: grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ProfileOptions(String image, String text, bool value) {
  return Padding(
    padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
    child: Row(
      children: [
        Container(
          height: 25.h,
          width: 30.w,
          decoration: BoxDecoration(
            color: Color(0xfff7f9fa),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        Text(
          text,
          style: TextStyle(
              height: 2,
              fontSize: 17.sp,
              color: value ? Color.fromARGB(255, 173, 49, 40) : black,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

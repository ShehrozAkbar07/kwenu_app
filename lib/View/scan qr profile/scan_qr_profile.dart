import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../Const/color.dart';
import '../../Widgets/custom_circle_image.dart';

class ScanQrProfile extends StatefulWidget {
  const ScanQrProfile({super.key});

  @override
  State<ScanQrProfile> createState() => _ScanQrProfileState();
}

class _ScanQrProfileState extends State<ScanQrProfile> {
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
                text: 'Scan QR Code',
                iconCross: false,
              ),
              SizedBox(
                height: 25.h,
              ),
              customCircleImage(
                  imgPath: 'assets/images/mike2.png', radius: 60.r),
              Center(
                child: Text(
                  "Mike Olaniyan",
                  style: TextStyle(
                      height: 2,
                      fontSize: 23.sp,
                      color: black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "@mikeolaniyan22",
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
              Options('Send Money'),
              Options('Send a Message'),
              Options('Follow Space'),
              Options('Shop Market'),
              SizedBox(
                height: 20.h,
              ),
              ScanqrButton('My Code'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ScanqrButton(String button_text) {
  return Container(
    height: 60.h,
    width: double.infinity,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: primary),
    child: Center(
        child: Padding(
      padding: EdgeInsets.only(left: 40.w),
      child: Row(
        children: [
          Container(
            height: 30.h,
            width: 30.h,
            child: Image.asset('assets/images/scanqr.png'),
          ),
          SizedBox(
            width: 70.w,
          ),
          Text(
            button_text,
            style: TextStyle(
                fontSize: 17.sp,
                color: whiteColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    )),
  );
}

Widget Options(String button_text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.h),
    child: Container(
      height: 60.h,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: bg),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                button_text,
                style: TextStyle(
                    fontSize: 17.sp, color: black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80.h,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: black,
                size: 21,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

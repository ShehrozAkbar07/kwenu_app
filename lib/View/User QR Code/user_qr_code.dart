import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../Const/color.dart';
import '../../Widgets/custom_circle_image.dart';

class UserQrCode extends StatefulWidget {
  const UserQrCode({super.key});

  @override
  State<UserQrCode> createState() => _UserQrCodeState();
}

class _UserQrCodeState extends State<UserQrCode> {
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
                  height: 40.h,
                ),
                customCircleImage(
                    imgPath: 'assets/images/mike.png', radius: 50.r),
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
                    "@mikeolaniyan22",
                    style: TextStyle(
                      fontSize: 14.sp,
                      height: 1.5,
                      color: grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 190.h,
                  width: 320.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/qr.png'),
                          fit: BoxFit.contain)),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Options('assets/images/download.png', 'Download'),
                      Options('assets/images/share.png', 'share'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                UserQrCodeButton('My Code'),
              ],
            )),
      ),
    );
  }
}

Widget UserQrCodeButton(String button_text) {
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

Widget Options(String image, String text) {
  return Container(
    height: 45.h,
    width: 130.w,
    decoration:
        BoxDecoration(color: bg, borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(children: [
        SizedBox(height: 20.h, width: 20.w, child: Image.asset(image)),
        SizedBox(
          width: 15.w,
        ),
        Text(
          text,
          style: TextStyle(color: black, fontSize: 14.sp),
        )
      ]),
    ),
  );
}

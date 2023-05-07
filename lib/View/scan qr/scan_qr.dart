import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../Const/color.dart';
import '../../Widgets/custom_circle_image.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
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

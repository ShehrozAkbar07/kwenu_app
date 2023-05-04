import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';

class DashboardAppbar extends StatefulWidget {
  final String text;
  const DashboardAppbar({super.key, required this.text});

  @override
  State<DashboardAppbar> createState() => _DashboardAppbarState();
}

class _DashboardAppbarState extends State<DashboardAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 80.h,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60.h,
                  width: 230.w,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                          height: 60.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Color(0xfff7f9fa), shape: BoxShape.circle),
                          child: Image.asset('assets/images/mike.png')),
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: grey,
                              ),
                            ),
                            Text(
                              widget.text,
                              style: TextStyle(
                                  height: 1.2,
                                  fontSize: 19.sp,
                                  color: black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60.h,
                  width: 100.w,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50.h,
                          width: 45.w,
                          decoration: const BoxDecoration(
                              color: Color(0xfff7f9fa), shape: BoxShape.circle),
                          child: Image.asset('assets/images/qrvc.png')),
                      Container(
                          height: 50.h,
                          width: 45.w,
                          decoration: const BoxDecoration(
                              color: Color(0xfff7f9fa), shape: BoxShape.circle),
                          child: Image.asset('assets/images/bellvc.png'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

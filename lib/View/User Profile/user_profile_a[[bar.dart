import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class UserProfileAppbar extends StatefulWidget {
  bool? value;
  bool? iconCross;
  final String text;
  UserProfileAppbar({required this.text, this.value, this.iconCross});

  @override
  State<UserProfileAppbar> createState() => _UserProfileAppbarState();
}

class _UserProfileAppbarState extends State<UserProfileAppbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                height: 50.h,
                width: 50.w,
                decoration: const BoxDecoration(
                    color: Color(0xfff7f9fa), shape: BoxShape.circle),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 70.w,
              // ),
              Text(
                widget.text,
                style: TextStyle(
                    fontSize: 24.sp, color: black, fontWeight: FontWeight.bold),
              ),
              Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: const BoxDecoration(
                      color: Color(0xfff7f9fa), shape: BoxShape.circle),
                  child: Image.asset('assets/images/qrvc.png'))
            ],
          ),
        ),
      ],
    );
  }
}

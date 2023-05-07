import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/View/Space/Space%20Home/like_comment_share.dart';
import 'package:kwenu_app/View/Space/Space%20Home/reusable_row_name.dart';

import '../../../Const/color.dart';

class ThirdPost extends StatefulWidget {
  const ThirdPost({ Key? key }) : super(key: key);

  @override
  _ThirdPostState createState() => _ThirdPostState();
}

class _ThirdPostState extends State<ThirdPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       reusable_row_space(),
        SizedBox(
          height: 15.h,
        ),
        Text(
          'Good to see you again fams ',
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        ),
        Text(
          "#chillingout",
          style: TextStyle(
              fontSize: 15.sp, fontWeight: FontWeight.w400, color: primary),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          width: 343.w,
          height: 188.h,
          decoration: BoxDecoration(
              color: red,
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                  image: AssetImage('assets/images/cloud_with_men.png'),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 15.h),
        like_comment_share(
          comment_text: '500',
          like_text: '123',
        ),
       
    ],);
  }
}
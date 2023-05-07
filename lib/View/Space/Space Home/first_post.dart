import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/View/Space/Space%20Home/like_comment_share.dart';
import 'package:kwenu_app/View/Space/Space%20Home/reusable_row_name.dart';

import '../../../Const/color.dart';

class FirstPost extends StatefulWidget {
  const FirstPost({Key? key}) : super(key: key);

  @override
  _FirstPostState createState() => _FirstPostState();
}

class _FirstPostState extends State<FirstPost> {
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
          'What a beautiful world 😊 ',
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        ),
        Text(
          "#adventure",
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
      ],
    );
  }
}

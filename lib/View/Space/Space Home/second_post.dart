import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/View/Space/Space%20Home/reusable_row_name.dart';

import '../../../Const/color.dart';
import 'like_comment_share.dart';

class SecondPost extends StatefulWidget {
  const SecondPost({Key? key}) : super(key: key);

  @override
  _SecondPostState createState() => _SecondPostState();
}

class _SecondPostState extends State<SecondPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        reusable_row_space(),
        SizedBox(height: 15.h),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa ',
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        ),
        Text(
          '#quote #motivation',
          style: TextStyle(
              fontSize: 15.sp, fontWeight: FontWeight.w400, color: primary),
        ),
        SizedBox(height: 15.h),
        like_comment_share(
          comment_text: '20',
          like_text: '123',
        ),
       
      ],
    );
  }
}

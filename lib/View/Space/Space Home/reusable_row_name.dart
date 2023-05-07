import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class reusable_row_space extends StatelessWidget {
  const reusable_row_space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage('assets/images/smiling_african.png'),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Michael Owen',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
                Text('Apr 09, 2021 12:22 ',style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w400),),
              ],
            ),
          ],
        ),
        Icon(Icons.more_vert)
      ],
    );
  }
}
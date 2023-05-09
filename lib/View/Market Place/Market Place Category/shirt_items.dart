import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Const/color.dart';

class ShirtItems extends StatefulWidget {
  const ShirtItems({ Key? key }) : super(key: key);

  @override
  _ShirtItemsState createState() => _ShirtItemsState();
}

class _ShirtItemsState extends State<ShirtItems> {
  
  List<String> images = [
    'assets/images/shirt_1.png',
    'assets/images/shirt_2.png',
    'assets/images/shirt_3.png',
    'assets/images/shirt_4.png',
  ];

  List<String> text = [
    'Men\'s Solid Smiling Face',
    'Men\'s Solid Smiling Face',
    'Men\'s Solid Smiling Face',
    'Men\'s Solid Smiling Face',
  ];

  List<String> shirt_price = [
    '₦8200',
    '₦24000',
    '₦7999',
    '₦7999',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: red,
      height: 200.h,
      child: ListView.separated(
          padding: EdgeInsets.only(left: 19.06.w),
          separatorBuilder: (context, index) => SizedBox(
                width: 17.23.w,
              ),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 144.32.w,
                        height: 144.32.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        text[index],
                        style: TextStyle(
                            fontSize: 11.4356.sp,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                      SizedBox(
                        height: 3.65.h,
                      ),
                      Text(
                        shirt_price[index],
                        style: TextStyle(
                            fontSize: 16.4959.sp, fontWeight: FontWeight.w600),
                      ),
                    ])
              ],
            );
          }),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Const/color.dart';

class MenTrousersMarketPlace extends StatefulWidget {
  const MenTrousersMarketPlace({ Key? key }) : super(key: key);

  @override
  _MenTrousersMarketPlaceState createState() => _MenTrousersMarketPlaceState();
}

class _MenTrousersMarketPlaceState extends State<MenTrousersMarketPlace> {
   List<String> images = [
    'assets/images/trouser_1.png',
    'assets/images/trouser_2.png',
    'assets/images/trouser_3.png',
  ];

  List<String> text = [
    'FDYJE Mens Trousers ....',
    'FDYJE Mens Trousers ....',
    'FDYJE Mens Trousers ....',
  ];

  List<String> shoe_price = [
    '₦8,000',
    '₦7999',
    '₦24000',
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
          itemCount: text.length,
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
                        shoe_price[index],
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

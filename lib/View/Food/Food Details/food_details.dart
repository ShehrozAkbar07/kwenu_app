import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Widgets/custom_buton.dart';

import '../../../Const/color.dart';
import '../../../Const/const.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 426.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/biryani.png'),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: padding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() {
                                Navigator.pop(context);
                              }),
                              child: Container(
                                height: 62.h,
                                width: 62.w,
                                decoration: BoxDecoration(
                                    color: red.withOpacity(0.5),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 5.w),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: whiteColor,
                                        size: 25,
                                      )),
                                ),
                              ),
                            ),
                            ImageIcon(
                              AssetImage('assets/images/cart_icon_black.png'),
                              color: whiteColor,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10.w,
                  top: 45.h,
                  child: Container(
                    height: 25.67.h,
                    width: 25.67.h,
                    child: Center(
                        child: Text(
                      '3',
                      style: TextStyle(fontSize: 13.6893.sp, color: whiteColor),
                    )),
                    decoration: BoxDecoration(
                      color: primary,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: whiteColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0, -17.h, 0),
              width: double.infinity,
              height: 420.h,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  children: [
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jollof Rice',
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '₦2500',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: red),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: red,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                '5.0 Rating',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage('assets/images/shopping_bag_2.png'),
                                color: red,
                                size: 23,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                '2000+ Order',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      'Tasty well seasoned Nigerian jollof rice popularly referred to as the best jollof in the world. Order now and get served a hot nice meal.',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.5.h),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/plate_2.png',
                                ),
                                height: 80.h,
                                width: 50.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bellefull Restaurant',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Container(
                                    width: 74.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                        color: red,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Center(
                                        child: Text(
                                      'Follow',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: whiteColor),
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xffFEE5E9),
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      color: red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xffFEE5E9),
                                    child: Icon(
                                      Icons.favorite_outlined,
                                      color: red,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Button(button_text: 'Add to cart', colors: red)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

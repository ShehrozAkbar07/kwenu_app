import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Space/Space%20Home/reusable_row_name.dart';

import '../../../Const/color.dart';
import '../../Market Place/Market Place Category/market_place_category.dart';

class RideHome extends StatefulWidget {
  const RideHome({Key? key}) : super(key: key);

  @override
  _RideHomeState createState() => _RideHomeState();
}

class _RideHomeState extends State<RideHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 270.h,
                  width: double.infinity,
                  // color: red,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/blue_bg.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 41.h,
                              width: 41.w,
                              decoration: const BoxDecoration(
                                  color: Color(0xff89AAF9),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: whiteColor,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Make your life \nmuch easier ",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Order now & get 10% \noff of your first ride',
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          width: 97.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(50.sp)),
                          child: Center(
                            child: Text(
                              "Order now",
                              style: TextStyle(
                                  color: primary,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: -5.w,
                  bottom: 0.h,
                  child: Image(
                    image: AssetImage(
                      'assets/images/african_human.png',
                    ),
                    fit: BoxFit.fitHeight,
                    height: 245.h,
                    width: 250.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select a ride',
                    style: TextStyle(
                        color: black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/car.png',
                            ),
                            height: 84.h,
                            width: 84.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Car',
                            style: TextStyle(
                                color: black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/bus.png',
                            ),
                            height: 84.h,
                            width: 84.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Bus',
                            style: TextStyle(
                                color: black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/truck.png',
                            ),
                            height: 84.h,
                            width: 84.w,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Dispatch',
                            style: TextStyle(
                                color: black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Ride",
                        style: TextStyle(
                            color: black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: primary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F5FE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/images/car_2.png'),
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "9 Apr, 2023",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "₦3,400",
                          style: TextStyle(
                              color: primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        // color: red,
                        height: 120.h,
                        padding: EdgeInsets.only(left: 30.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            location_and_drop_off(
                                keys: 'Pickup Location',
                                values: 'Obanle Junction, Yaba'),
                            SizedBox(
                              height: 25.h,
                            ),
                            location_and_drop_off(
                                keys: 'Drop off',
                                values: 'Jankara Market - Ikeja')
                          ],
                        ),
                      ),
                      Positioned(
                          left: 2.w,
                          bottom: 18.h,
                          child: Image(
                            image: AssetImage('assets/images/dotted_line.png'),
                            height: 80.h,
                            width: 25.w,
                          ))
                    ],
                  ),
                  transport(
                      transports: 'assets/images/auto.png',
                      date: '8 Apr, 2023',
                      money: '₦1,300'),
                  SizedBox(
                    height: 20.h,
                  ),
                  transport(
                      transports: 'assets/images/bike.png',
                      date: '7 Apr, 2023',
                      money: '₦1,100')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class location_and_drop_off extends StatelessWidget {
  final String keys;
  final String values;
  const location_and_drop_off(
      {Key? key, required this.keys, required this.values})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          keys,
          style: TextStyle(
              color: grey, fontSize: 12.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          values,
          style: TextStyle(
              color: black, fontSize: 17.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class transport extends StatelessWidget {
  final String transports;
  final String date;
  final String money;
  const transport(
      {Key? key,
      required this.transports,
      required this.date,
      required this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage(transports),
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 12.h,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        color: Color(0xff404446),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Text(
              money,
              style: TextStyle(
                  color: primary, fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}

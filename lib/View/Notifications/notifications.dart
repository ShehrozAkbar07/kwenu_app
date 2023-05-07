import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../Const/color.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List today = [
    {
      "option": "Send",
      "image": "assets/images/d1.png",
      'title': "Money Out",
      'subtitle': "₦2000 sent to Paul Adamu",
      'date': "April 09 13:23",
      'time': '3m ago'
    },
    {
      "option": "Bills",
      "image": "assets/images/pink.png",
      'title': "P2P Transfer",
      'subtitle': "₦6000 sent to Michael Adehaje",
      'date': "April 09 12:20",
      'time': '1h ago'
    },
    {
      "option": "Bills",
      "image": "assets/images/finger.png",
      'title': "OTP Code",
      'subtitle': "391384 - Expired",
      'date': "April 09 12:20",
      'time': '2hrs ago'
    }
  ];
  List ThisWeek = [
    {
      "image": "assets/images/d1.png",
      'title': "10% Cash Back",
      'subtitle': "₦200 Cash back - Habib Yoghurt",
      'Date': 'Apr 01'
    },
    {
      "image": "assets/images/pink.png",
      'title': "Card Top up",
      'subtitle': "₦40,000 added to your card",
      'Date': 'Mar 30'
    },
    {
      "image": "assets/images/finger.png",
      'title': "P2P Transfer",
      'subtitle': "₦8000 sent to Julian Obi",
      'Date': 'Mar 29'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Appbarr(
                text: 'Notification',
                iconCross: false,
              ),
              Text(
                "Today",
                style: TextStyle(
                    fontSize: 26.sp, color: black, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: today.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50.h,
                              width: 238.w,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Container(
                                      height: 40.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xfff7f9fa),
                                          shape: BoxShape.circle),
                                      child:
                                          Image.asset(today[index]["image"])),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          today[index]['title'],
                                          style: TextStyle(
                                              height: 1.2,
                                              fontSize: 16.sp,
                                              color: black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          today[index]['subtitle'],
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            height: 1.5,
                                            color: grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    today[index]['time'],
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: 13.sp,
                                      color: grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "This Week",
                style: TextStyle(
                    fontSize: 26.sp, color: black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ThisWeek.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50.h,
                              width: 245.w,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Container(
                                      height: 40.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xfff7f9fa),
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                          ThisWeek[index]["image"])),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ThisWeek[index]['title'],
                                          style: TextStyle(
                                              height: 1.2,
                                              fontSize: 16.sp,
                                              color: black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          ThisWeek[index]['subtitle'],
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            height: 1.5,
                                            color: grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    ThisWeek[index]['Date'],
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: 13.sp,
                                      color: grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ])),
      ),
    );
  }
}

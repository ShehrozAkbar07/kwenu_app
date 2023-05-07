import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Dashboard/categories.dart';
import 'package:kwenu_app/View/Dashboard/debit_card_container.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import 'dashboard_appbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List activities = [
    {
      "option": "Send",
      "image": "assets/images/mike.png",
      'title': "Transfer From Philip",
      'subtitle': "P2P Transfers",
      'date': "April 09 13:23",
      'price': '₦7,000'
    },
    {
      "option": "Bills",
      "image": "assets/images/dstv.png",
      'title': "DSRv Bill Payment",
      'subtitle': "Bill Payment",
      'date': "April 09 12:20",
      'price': '₦3,470'
    },
    {
      "option": "Bills",
      "image": "assets/images/yogurt.png",
      'title': "Habib Yogurt",
      'subtitle': "Market",
      'date': "April 09 12:20",
      'price': '₦844'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DashboardAppbar(
              text: 'Henry Geofrey',
            ),
            Flexible(
                flex: 4,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 210.h,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.connectCard);
                                },
                                child: const DebitCard(
                                    Balance: "₦‎5,750.20",
                                    cardNumber: "5282 **** **** 6372",
                                    expDate: "09/25",
                                    cardImage: "assets/images/blue.png"),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              const DebitCard(
                                  Balance: "₦‎5,750.20",
                                  cardNumber: "5282 **** **** 6372",
                                  expDate: "09/25",
                                  cardImage: "assets/images/red.png"),
                            ],
                          ),
                        ),
                      ),
                      Categories(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent Activities",
                                style: TextStyle(
                                    height: 1.2,
                                    fontSize: 21.sp,
                                    color: black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                    height: 1.2,
                                    fontSize: 14.sp,
                                    color: primary,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: activities.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Container(
                                color: Colors.transparent,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: padding),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 230.w,
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
                                                    activities[index]
                                                        ["image"])),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    activities[index]['title'],
                                                    style: TextStyle(
                                                        height: 1.2,
                                                        fontSize: 16.sp,
                                                        color: black,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Text(
                                                    activities[index]
                                                        ['subtitle'],
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              activities[index]['price'],
                                              style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: 18.sp,
                                                  color: index == 0
                                                      ? primary
                                                      : black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              activities[index]['date'],
                                              style: TextStyle(
                                                height: 1.4,
                                                fontSize: 14.sp,
                                                color: grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      SizedBox(
                        height: 80.h,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

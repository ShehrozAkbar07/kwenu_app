import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';
import 'package:kwenu_app/Widgets/custom_circle_image.dart';
import 'package:kwenu_app/Widgets/custom_text_field.dart';

import '../../Const/color.dart';

class P2PTransfer extends StatefulWidget {
  const P2PTransfer({super.key});

  @override
  State<P2PTransfer> createState() => _P2PTransferState();
}

class _P2PTransferState extends State<P2PTransfer> {
  TextEditingController controller = TextEditingController();
  List recentUsers = [
    {
      "name": "Julian Obi",
      "image": "assets/images/recent1.png",
      'username': "@julianobi12",
    },
    {
      "name": "Mike Owen",
      "image": "assets/images/recent2.png",
      'username': "@owenmike81",
    },
    {
      "name": "Pradesh J.",
      "image": "assets/images/recent3.png",
      'username': "@pdj3819",
    },
  ];
  List contacts = [
    {
      "name": "Mike Adewale",
      "image": "assets/images/c1.png",
    },
    {
      "name": "Josiah Ikechukwu",
      "image": "assets/images/c2.png",
    },
    {
      "name": "JJ Brian",
      "image": "assets/images/c3.png",
    },
    {
      "name": "Rachael Adams",
      "image": "assets/images/c4.png",
    },
    {
      "name": "Kolawole Andrew",
      "image": "assets/images/c5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appbarr(
              text: 'P2P Transfer',
              iconCross: false,
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Recently",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 60.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recentUsers.length,
                        itemBuilder: ((context, index) {
                          return recently(
                              recentUsers[index]['name'],
                              recentUsers[index]['username'],
                              recentUsers[index]['image']);
                        })),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Contacts",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: CustomTextFieldd(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: black,
                      ),
                      suffix: SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Image.asset('assets/images/qrblue.png')),
                      text: 'Search Cotact',
                      controller: controller,
                      ab: false,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: contacts.length,
                      itemBuilder: ((context, index) {
                        return Contacts(
                          contacts[index]['name'],
                          contacts[index]['image'],
                        );
                      })),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

Widget recently(String name, String username, String image) {
  return Padding(
    padding: EdgeInsets.only(left: 12.w),
    child: Container(
      height: 60.h,
      width: 145.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bg,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Row(
              children: [
                customCircleImage(imgPath: image, radius: 18.r),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: black,
                      ),
                    ),
                    Text(
                      username,
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.4,
                        color: grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget Contacts(String name, String image) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding, vertical: 10.h),
    child: Row(
      children: [
        customCircleImage(imgPath: image, radius: 30.r),
        SizedBox(
          width: 20.w,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 22.sp, color: black, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

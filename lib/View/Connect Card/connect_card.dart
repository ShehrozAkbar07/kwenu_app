import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Dashboard/debit_card_container.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';
import 'package:kwenu_app/Widgets/custom_buton.dart';

import '../../AppRoutes/routes.dart';

class ConnectCard extends StatefulWidget {
  const ConnectCard({super.key});

  @override
  State<ConnectCard> createState() => _ConnectCardState();
}

class _ConnectCardState extends State<ConnectCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              Appbarr(
                text: "Connect Card",
                iconCross: false,
              ),
              Container(
                height: 550.h,
                width: 340.w,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card('assets/images/blue.png'),
                      Card('assets/images/red.png'),
                      Card('assets/images/blue.png'),
                      Card('assets/images/red.png'),
                      Card('assets/images/blue.png'),
                      Card('assets/images/red.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.userProfile);
                  },
                  child: Button(colors: primary, button_text: 'Add New Card'))
            ],
          ),
        ),
      ),
    );
  }
}

Widget Card(image) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    child: Container(
      height: 200.h,
      width: 320.w,
      child: DebitCard(
          expDate: "09/25",
          Balance: "₦‎5,750.20",
          cardNumber: "5282 **** **** 6372",
          cardImage: image),
    ),
  );
}

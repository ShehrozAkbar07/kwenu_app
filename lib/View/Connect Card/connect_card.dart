import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Dashboard/debit_card_container.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';
import 'package:kwenu_app/Widgets/custom_buton.dart';

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
                width: double.infinity,
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
                height: 30.h,
              ),
              Button(button_text: 'Add New Card')
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
      width: double.infinity,
      child: DebitCard(
          expDate: 'expDate',
          Balance: 'Balance',
          cardNumber: 'cardNumber',
          cardImage: image),
    ),
  );
}

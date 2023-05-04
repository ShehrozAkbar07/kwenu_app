import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';

import '../../Const/color.dart';

class DebitCard extends StatefulWidget {
  final String expDate;
  final String Balance;
  final String cardNumber;
  final String cardImage;
  const DebitCard(
      {super.key,
      required this.expDate,
      required this.Balance,
      required this.cardNumber,
      required this.cardImage});

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 320.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          image: DecorationImage(
              image: AssetImage(widget.cardImage), fit: BoxFit.contain)),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              "Card Balance (in App)",
              style: TextStyle(
                  fontSize: 17.sp,
                  color: cardtext,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              widget.Balance,

              //      "₦‎5,750.20",
              style: TextStyle(
                  height: 1.7,
                  fontSize: 27.sp,
                  color: whiteColor,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40.w, top: 60.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.cardNumber,
                    //   "5282 **** **** 6372",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    widget.expDate,
                    // "09/25",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../Const/color.dart';
import '../../Const/const.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  // RangeValues values = const RangeValues(25.0, 45.0);

  double _currentSliderValue = 20;

  List price = ['₦500', '₦5000', '₦1000', '₦20000', '₦30000', '₦50000'];

  @override
  Widget build(BuildContext context) {
    print(_currentSliderValue.round().toString());
    // RangeLabels labels = RangeLabels(
    //   values.start.round().toString(),
    //   values.start.round().toString(),
    // );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appbarr(
              text: "Top Up",
              iconCross: false,
            ),
            Text(
              "Recent Activities",
              style: TextStyle(
                  height: 1.2,
                  fontSize: 21.sp,
                  color: black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "₦‎500",
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 16.sp,
                      color: grey,
                    ),
                  ),
                  Text(
                    "₦‎50,000",
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 16.sp,
                      color: grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SliderTheme(
                data: const SliderThemeData(
                    rangeThumbShape: RoundRangeSliderThumbShape(
                        enabledThumbRadius: 8,
                        elevation: 5,
                        disabledThumbRadius: 8,
                        pressedElevation: 5),
                    trackHeight: 6.5,
                    thumbColor: Color(0xffFEFCFF),
                    valueIndicatorColor: primary,
                    inactiveTrackColor: Colors.grey,
                    activeTrackColor: primary,
                    tickMarkShape: RoundSliderTickMarkShape(),
                    overlayColor: primary,
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 18,
                    ),
                    overlappingShapeStrokeColor: primary),
                child: Slider(
                    label: _currentSliderValue.round().toString(),
                    // activeColor:  Color(AppColors.primary),
                    // inactiveColor:  Colors.grey,
                    value: _currentSliderValue,
                    max: 100.0,
                    // labels:   RangeLabels('${values.start.round()}','${values.end.round()}'),

                    onChanged: (double newValues) {
                      // print( 'START: ${value.start}, END: ${value.end}');
                      setState(() {
                        _currentSliderValue = newValues;
                      });
                    })),
            Text(
              "Amount",
              style: TextStyle(
                  height: 1.2,
                  fontSize: 21.sp,
                  color: black,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              color: Colors.yellow,
              height: 100.h,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('50,000'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

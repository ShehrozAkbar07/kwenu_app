import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/Widgets/custom_button.dart';

import '../../../Widgets/custom_buton.dart';

class MarketPlaceSingleProduct extends StatefulWidget {
  const MarketPlaceSingleProduct({Key? key}) : super(key: key);

  @override
  _MarketPlaceSingleProductState createState() =>
      _MarketPlaceSingleProductState();
}

class _MarketPlaceSingleProductState extends State<MarketPlaceSingleProduct> {
 
  
  List<String> text = [
    '41',
    '42',
    '43',
    '44',
  ];

  List<bool> change_color = [
    false,
    true,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgrey,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 62.h,
                        width: 62.w,
                        decoration: const BoxDecoration(
                            color: whiteColor, shape: BoxShape.circle),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: black,
                              size: 25,
                            )
                          ),
                        ),
                      ),
                      Image(
                          image:
                              AssetImage('assets/images/cart_icon_black.png'))
                    ],
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0, -35.h, 0),
                  child: Image(image: AssetImage('assets/images/shoes_image.png'))),
                Align(
                  child: Container(
                    transform: Matrix4.translationValues(0, -55.h, 0),
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    
                    width: double.infinity,
                    height: 500.h,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Men Smart Fit",
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Sneakers",
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "₦8000",
                              style: TextStyle(
                                  fontSize: 24.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Text(
                          'Variation',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Wrap(
                          spacing: 2.w,
                          children: List.generate(text.length, (index) {
                            return InkWell(
                              onTap: (){
                                change_color[index] = !change_color[index];
                                
                                setState(() {
                                  
                                });
                              },
                              child: Container(
                                width: 38.w,
                                height: 38.h,
                                decoration:  BoxDecoration(
                                  color: change_color[index] ? Colors.transparent : primary,
                                  shape: BoxShape.circle,
                                  border:  Border.all(
                                    color: change_color[index] ? lightgrey2: Colors.transparent,
                                    width: 1.0,
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  text[index],
                                  style: TextStyle(
                                      fontSize: 14.sp, color: change_color[index] ? lightgrey2: whiteColor,),
                                )),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/image 8.png',
                              ),
                              height: 60.h,
                              width: 60.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Shoe Store',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  width: 74.w,
                                  height: 19.67.h,
                                  decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Follow",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                               
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 16.h,),
                      Button(button_text: 'Add to Cart', colors: primary)
                      ],
                    ),
                  ),
                )
              ],
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
                decoration: new BoxDecoration(
                  color: primary,
                  shape: BoxShape.circle,
                  border: new Border.all(
                    color: whiteColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Const/color.dart';
import '../../Const/const.dart';

class CustomAppBarMarketPlace extends StatefulWidget {

final String text;
final String hint_text;

   CustomAppBarMarketPlace({Key? key, required this.text, required this.hint_text}) : super(key: key);

  @override
  _CustomAppBarMarketPlaceState createState() =>
      _CustomAppBarMarketPlaceState();
}

class _CustomAppBarMarketPlaceState extends State<CustomAppBarMarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      decoration: BoxDecoration(
          // color: red,
          image: DecorationImage(
              image: AssetImage('assets/images/Frame_appbar.png'),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Container(
            transform: Matrix4.translationValues(0, 12.h, 0),
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 41.h,
                        width: 41.w,
                        decoration: const BoxDecoration(
                            color: cardtext, shape: BoxShape.circle),
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
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Image(
                        image:
                            AssetImage('assets/images/add_to_cart_icon.png')),
                  ],
                ),
                SizedBox(
                  height: 27.5.h,
                ),
                Container(
                  width: double.infinity,
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: widget.hint_text,
                        contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                        prefixIcon: Image(
                            image: AssetImage('assets/images/search_icon.png')),
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: grey.withOpacity(0.4),
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 15.w,
              top: 32.h,
              child: CircleAvatar(
                backgroundColor: orange,
                minRadius: 8.r,
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 12.sp, color: whiteColor),
                ),
              )),
        ],
      ),
    );
  }
}

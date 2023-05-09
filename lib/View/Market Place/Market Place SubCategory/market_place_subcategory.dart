import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Market%20Place/custom_app_bar_market_place.dart';
import 'package:kwenu_app/Widgets/custom_text_field.dart';

import '../MarketPlace Single Product/market_place_single_product.dart';

class MarketPlaceSubcategory extends StatefulWidget {
  const MarketPlaceSubcategory({Key? key}) : super(key: key);

  @override
  _MarketPlaceSubcategoryState createState() => _MarketPlaceSubcategoryState();
}

class _MarketPlaceSubcategoryState extends State<MarketPlaceSubcategory> {
  List<String> images = [
    'assets/images/18 1.png',
    'assets/images/15 8.png',
    'assets/images/13 1.png',
    'assets/images/110 1.png',
    'assets/images/15 8.png',
    'assets/images/18 1.png',
  ];

  List<String> text = [
    '2021 Men Casual Classic ...',
    'Latest Men runners boot ',
    '2021 Men Casual Classic ...',
    '2021 Men Casual Classic ...',
    'Latest Men runners boot ',
    '2021 Men Casual Classic ...',
  ];

  List<String> shoe_price = [
    '₦8,000',
    '₦24,000',
    '₦32,000',
    '₦7999',
    '₦24,000',
    '₦8,000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarMarketPlace(text: 'Shoes', hint_text: 'Search Shoes'),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 13.h),
                child: Wrap(
                  spacing: 21.47.w, //horizontal spacing
                  runSpacing: 35.h, //vertical spacing
                  children: List.generate(6, (index) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (() {
                              if(index == 0 ){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MarketPlaceSingleProduct()));
                              }
                            }),
                            child: Container(
                              width: 159.53.w,
                              height: 159.53.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.r),
                                image: DecorationImage(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.cover),
                                // color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          SizedBox(
                            height: 3.65.h,
                          ),
                          Text(
                            shoe_price[index],
                            style: TextStyle(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ]);
                  }),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

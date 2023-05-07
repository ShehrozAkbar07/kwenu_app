import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Category/men_trousers_market_place.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Category/shoes_market_place.dart';
import 'package:kwenu_app/View/Market%20Place/custom_app_bar_market_place.dart';

class MarketPlaceCategory extends StatefulWidget {
  const MarketPlaceCategory({Key? key}) : super(key: key);

  @override
  _MarketPlaceCategoryState createState() => _MarketPlaceCategoryState();
}

class _MarketPlaceCategoryState extends State<MarketPlaceCategory> {

  List<String> products_images= [
    'assets/images/164 1.png',
    'assets/images/164 1 (1).png',
    'assets/images/shorts.png',
    'assets/images/164 1 (3).png',
  ];
  List<String> products_name = [
    'Shoes',
    'Shirt',
    'Pant',
    'T-Shirt',
  ];

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
        backgroundColor: bg,
        body: Column(
          children: [
            CustomAppBarMarketPlace(
                text: 'Cloathing', hint_text: 'Search Cloathing'),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 13.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Row(
                          children: [
                            Container(
                              width: 201.45.w,
                              height: 111.57.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                // color: red,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/adidas_image.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              width: 201.45.w,
                              height: 111.57.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: red,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/maroon_shirt.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(4, (index) {
                        return Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: lightgrey,
                                maxRadius: 36.5.r,
                                child: Container(
                                  width: 39.w,
                                  height: 39.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          products_images[index],
                                        ),
                                        fit: BoxFit.fill),
                                  ),
                                )),
                            SizedBox(
                              height: 5.75.h,
                            ),
                            Text(  products_name[index]),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        );
                      }),
                    ),
                    Container(
                      height: 280.h,
                      color: whiteColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: padding),
                            child: reusablerow(reusablerow_text: 'Shoes'),
                          ),
                          SizedBox(
                            height: 27.28.h,
                          ),
                          ShoesMarketPlace()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 280.h,
                      color: whiteColor,
                      child: Column(  
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: padding),
                            child: reusablerow(reusablerow_text: 'Men Trousers')
                          ),
                          SizedBox(
                            height: 27.28.h,
                          ),
                          
                          MenTrousersMarketPlace()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class reusablerow extends StatelessWidget {
  final String reusablerow_text;
  const reusablerow({Key? key, required this.reusablerow_text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          reusablerow_text,
          style: TextStyle(fontSize: 17.1535.sp, fontWeight: FontWeight.w500),
        ),
        Text(
          'View All',
          style: TextStyle(
              fontSize: 17.1535.sp,
              fontWeight: FontWeight.w500,
              color: primary),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kwenu_app/AppRoutes/routes.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Home/bottom_nav.dart';
import 'package:kwenu_app/View/Market%20Place/custom_app_bar_market_place.dart';

class MarketPlaceHome extends StatefulWidget {
  const MarketPlaceHome({Key? key}) : super(key: key);

  @override
  _MarketPlaceHomeState createState() => _MarketPlaceHomeState();
}

class _MarketPlaceHomeState extends State<MarketPlaceHome> {
  int _currentindex = 0;

  List<String> Grid_text = [
    'Groceries',
    'Clothing',
    'Electronics',
    'Gadget',
    'Services',
    'Furniture',
  ];

  List<String> marketplace_image = [
    'assets/images/Groceries_image.png',
    'assets/images/clothing_image.png',
    'assets/images/electronics_image.png',
    'assets/images/gadget_image.png',
    'assets/images/services_image.png',
    'assets/images/furniture_image.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          backgroundColor: bg,
          bottomNavigationBar: BottomNav(),
          body: Column(children: [
            CustomAppBarMarketPlace(text: 'Market', hint_text: 'Search Market'),
            Flexible(
              child: SingleChildScrollView(
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        transform: Matrix4.translationValues(0, -5.h, 0),
                        padding: EdgeInsets.symmetric(horizontal: padding),
                        child: TabBar(
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(width: 3, color: primary),
                              insets: EdgeInsets.symmetric(vertical: 10.w),
                            ),
                            indicatorPadding: EdgeInsets.zero,
                            labelPadding: EdgeInsets.zero,
                            labelStyle: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w500),
                            unselectedLabelColor: lightgrey2,
                            labelColor: primary,
                            indicatorColor: primary,
                            tabs: [
                              Tab(
                                child: Text(
                                  'All Market',
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Trending',
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'New',
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Nearby',
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0, -8.h, 0),
                        child: GridView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.w, //space in horizontal
                            mainAxisExtent: 167.h, //height of container
                            mainAxisSpacing: 8.w, //space in vertical
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.toNamed(
                                    AppRoutes.market_place_category);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            marketplace_image[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(18.r)),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 12.w, bottom: 13.h),
                                      child: Text(
                                        Grid_text[index],
                                        style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}

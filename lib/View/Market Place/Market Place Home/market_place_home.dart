import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Category/market_place_category.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Home/bottom_nav.dart';
import 'package:kwenu_app/View/Market%20Place/custom_app_bar_market_place.dart';
import 'package:kwenu_app/View/Space/Space%20Room/space_room.dart';

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          extendBody: true,
          backgroundColor: bg,
          // bottomNavigationBar: BottomNav(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 140.h,
            flexibleSpace: Column(
              children: [
                CustomAppBarMarketPlace(
                    text: 'Market', hint_text: 'Serch Market')
              ],
            ),
            bottom: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: primary),
                  insets: EdgeInsets.symmetric(vertical: 8.w),
                ),
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                labelStyle:
                    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                GridView.builder(
                  padding:
                      EdgeInsets.only(left: 25.w, right: 25.w, bottom: 8.h),
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w, //space in horizontal
                    mainAxisExtent: 167.h, //height of container
                    mainAxisSpacing: 10.w, //space in vertical
                  ),
                  itemCount: marketplace_image.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      MarketPlaceCategory())));
                        }

                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(marketplace_image[index]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(18.r)),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 12.w, bottom: 13.h),
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
                // SizedBox(height: 20.h,),
                // Container(

                //   height: 20,
                // )
              ],
            ),
          )),
    );
  }
}

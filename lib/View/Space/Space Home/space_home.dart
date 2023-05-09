import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Home/bottom_nav.dart';
import 'package:kwenu_app/View/Space/Space%20Home/first_post.dart';
import 'package:kwenu_app/View/Space/Space%20Home/like_comment_share.dart';
import 'package:kwenu_app/View/Space/Space%20Home/reusable_row_name.dart';
import 'package:kwenu_app/View/Space/Space%20Home/second_post.dart';
import 'package:kwenu_app/View/Space/Space%20Home/third_post.dart';
import 'package:kwenu_app/View/Space/space_tabbar.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../../Const/const.dart';
import '../space_appbar.dart';

class SpaceHome extends StatefulWidget {
  const SpaceHome({Key? key}) : super(key: key);

  @override
  _SpaceHomeState createState() => _SpaceHomeState();
}

class _SpaceHomeState extends State<SpaceHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              child: Icon(
                CupertinoIcons.add,
                color: whiteColor,
                size: 30,
              ),
              onPressed: () {}),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: primary),
                insets: EdgeInsets.symmetric(vertical: 10.w),
              ),
              indicatorPadding: EdgeInsets.symmetric(horizontal: -10.w),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.zero,
              labelStyle:
                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              unselectedLabelColor: lightgrey2,
              labelColor: primary,
              indicatorColor: primary,
              tabs: [
                Tab(
                  child: Text(
                    'Post',
                  ),
                ),
                Tab(
                  child: Text(
                    'Live Stream',
                  ),
                ),
                Tab(
                  child: Text(
                    'Room',
                  ),
                ),
              ],
            ),
            toolbarHeight: 50.h,
            flexibleSpace: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                SpaceAppbar(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNav(),
          body: SingleChildScrollView(
            child: Container(
              color: Color.fromARGB(255, 197, 229, 255),
              height: 1500.h,
              child: TabBarView(
                children: <Widget>[
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.h,
                        child: ListView.separated(
                            padding: EdgeInsets.only(left: 20.w),
                            // padding: EdgeInsets.only(bottom: 48.h,left:padding,right: padding),
                            separatorBuilder: ((context, index) => SizedBox(
                                  width: 8.w,
                                )),
                            itemCount: 7,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    width: 50.w,
                                    height: 59.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xff7c94b6),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/smiling_african.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        color: primary,
                                        width: 1.5.w,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding),
                          child: FirstPost()),
                      SizedBox(height: 1.h),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding),
                          child: SecondPost()),
                      SizedBox(height: 1.h),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: padding),
                          child: ThirdPost()),
                      SizedBox(height: 1.h),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('wajih'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('yoo'),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

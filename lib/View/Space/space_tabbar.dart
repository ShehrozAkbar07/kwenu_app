import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class SpaceTabbar extends StatefulWidget {
  const SpaceTabbar({Key? key}) : super(key: key);

  @override
  _SpaceTabbarState createState() => _SpaceTabbarState();
}

class _SpaceTabbarState extends State<SpaceTabbar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3, color: primary),
          insets: EdgeInsets.symmetric(vertical: 10.w),
        ),
        indicatorPadding: EdgeInsets.symmetric(horizontal: -10.w),
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.zero,
        labelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
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
        ]);
  }
}

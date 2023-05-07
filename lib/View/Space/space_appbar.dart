import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/const.dart';

import '../../Const/color.dart';

class SpaceAppbar extends StatefulWidget {
  const SpaceAppbar({ Key? key }) : super(key: key);

  @override
  _SpaceAppbarState createState() => _SpaceAppbarState();
}

class _SpaceAppbarState extends State<SpaceAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 54.h,
                    width: 54.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mike.png'))),
                  ),
                  Text(
                    'Space',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                  ImageIcon(
                    AssetImage(
                      'assets/images/search_icon.png',
                    ),
                    color: black,
                  ),
                ],
              ),
            ),
          );
  }
}
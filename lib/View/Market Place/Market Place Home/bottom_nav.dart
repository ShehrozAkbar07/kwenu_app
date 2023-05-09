import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Category/market_place_category.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Home/market_place_home.dart';
import 'package:kwenu_app/View/Space/Space%20Home/space_home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

int _currentindex = 0;

final _widgetOptions = [
  Center(
    child: Text('wajih 1'),
  ),
  Center(
    child: Text('wajih 2'),
  ),
  MarketPlaceCategory(),
  SpaceHome(),
  Center(
    child: Text('wajih 5'),
  ),
];

final tabs = [
   Center(
    child: Text('Home Screen',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
  Center(
    child: Text('Chat',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
 MarketPlaceHome(),
  SpaceHome(),
  Center(
    child: Text('Me',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
];
class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: Container(
            height: 78.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: lightgrey, // red as border color
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              // boxShadow: [
              //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              // ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                    // selectedIconTheme: IconThemeData(color: red),
                    currentIndex: _currentindex,
                    type: BottomNavigationBarType.fixed,
                    selectedLabelStyle:
                        TextStyle(fontSize: 12.sp, color: primary),
                    unselectedLabelStyle: TextStyle(fontSize: 12.sp),
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home_outlined,
                          ),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.chat_outlined), label: 'Chat'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.storefront_outlined),
                          label: 'Market'),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.layers_alt),
                          label: 'Spaces'),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.person), label: 'Me'),
                    ],
                    onTap: (index) {
                      setState(() {
                        _currentindex = index;
                      });
                    }))));
  }
}

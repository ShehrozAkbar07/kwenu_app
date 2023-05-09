import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

int _currentindex = 0;

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            selectedLabelStyle: TextStyle(fontSize: 12.sp, color: primary),
            unselectedLabelStyle: TextStyle(fontSize: 12.sp),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.storefront_outlined), label: 'Market'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.layers_alt), label: 'Spaces'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), label: 'Me'),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
          ),
        ));
  }
}

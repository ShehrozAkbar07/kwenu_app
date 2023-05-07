import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/View/Login/login.dart';
import 'package:kwenu_app/View/SignUp/sign_up.dart';

import '../../Const/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = "/";

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  String splashImage = "splash1";
  late AnimatedSwitcher animatedSwitcher;

  startTime() async {
    Duration duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void changeSplashImage() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        splashImage = "splash2";
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        splashImage = "splash3";
      });
    });
  }

  void navigationPage() {
    // SharedPreferences.getInstance().then((value) {
    //   if (value.containsKey('userId')) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
    // } else {
    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    // }
    // });
  }

  @override
  void initState() {
    super.initState();
    // changeSplashImage();
    animatedSwitcher = const AnimatedSwitcher(duration: Duration(seconds: 2));
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primary,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // Image.asset(
            //   "assets/images/splash.png",
            //   fit: BoxFit.cover,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  // width: Dimens.width10,
                  // height: Dimens.height10,
                  width: animation.value * 200,
                  height: animation.value * 150,
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       left: Dimens.width8, bottom: Dimens.height2),
                //   child:
                // ),

                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  height: size.height * 0.041,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Kwenu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

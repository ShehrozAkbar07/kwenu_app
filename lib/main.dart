import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AppRoutes/routes.dart';
import 'Const/color.dart';
import 'Const/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "BLK Sense",
            smartManagement: SmartManagement.full,
            debugShowCheckedModeBanner: false,
            getPages: AppRoutes.appRoutes,
            initialRoute: AppRoutes.onboardscreen,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch()
                  .copyWith(primary: primary, onPrimary: whiteColor),
              scaffoldBackgroundColor: const Color(0xffF5F5F5),
              primaryColor: const Color(0xffB59F84),
              // textTheme:
              //     GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              //         .apply(
              //   bodyColor: Colors.black,
              // ),
              iconTheme: const IconThemeData(color: Color(0xff000000)),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    foregroundColor: whiteColor,
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius)),
                    fixedSize: Size.fromWidth(ScreenUtil().screenWidth),
                    padding: EdgeInsets.all(15.h)),
              ),
            ),
          );
        });
  }
}

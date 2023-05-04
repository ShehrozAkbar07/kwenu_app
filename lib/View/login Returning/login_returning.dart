import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Widgets/app_bar.dart';

import '../../Const/color.dart';
import '../../Widgets/custom_circle_image.dart';

class LoginReturning extends StatefulWidget {
  const LoginReturning({super.key});

  @override
  State<LoginReturning> createState() => _LoginReturningState();
}

class _LoginReturningState extends State<LoginReturning> {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Appbarr(text: 'Sign in'),
          customCircleImage(imgPath: 'assets/images/mike.png', radius: 50),
          Expanded(
              child: GridView.builder(
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 0.51, crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color:
                              (index == 11 || index == 9) ? null : Colors.blue,
                          borderRadius: BorderRadius.circular(11)),
                      margin: EdgeInsets.all(4.0),
                      height: 70.h,
                      width: 100.w,
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                            child: index == 11
                                ? Container(
                                    height: 25.h,
                                    width: 25.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: black, width: 1.6)),
                                    child: const Center(
                                        child: Text(
                                      "X",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )
                                : Text(
                                    "${numbers[index == 10 ? index - 1 : index]}")),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

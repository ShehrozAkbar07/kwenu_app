import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class Button extends StatefulWidget {
  final String button_text;
  const Button({super.key, required this.button_text});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: primary),
      child: Center(
        child: Text(
          widget.button_text,
          style: TextStyle(
              fontSize: 18.sp, color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

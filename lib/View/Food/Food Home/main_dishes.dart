import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDishes extends StatefulWidget {
  const MainDishes({Key? key}) : super(key: key);

  @override
  _MainDishesState createState() => _MainDishesState();
}

class _MainDishesState extends State<MainDishes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w, //space in horizontal
          mainAxisExtent: 134.h, //height of container
          mainAxisSpacing: 10.w, //space in vertical
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/steak.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(18.r)),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FastFood_item extends StatefulWidget {
  const FastFood_item({ Key? key }) : super(key: key);

  @override
  _FastFoodState createState() => _FastFoodState();
}

class _FastFoodState extends State<FastFood_item> {

    List<String> fast_food_items = [
    'assets/images/icecream.png',
        'assets/images/burger.png',
        'assets/images/pizza.png',
        'assets/images/fries.png',
        'assets/images/hotdog.png',
        'assets/images/cookies.png',
  ];
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
                    image: AssetImage(fast_food_items[index]),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(18.r)),
          );
        },
      ),
    );
  }
}

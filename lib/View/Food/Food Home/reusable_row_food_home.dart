import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Const/color.dart';

class ReusableRowFoodHome extends StatelessWidget {
  final String food_items;
  const ReusableRowFoodHome({ Key? key, required this.food_items }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(food_items,style: TextStyle(color: black,fontSize: 17.15.sp,fontWeight: FontWeight.w500),),
        Text('View All',style: TextStyle(color: red,fontSize: 15.25.sp,fontWeight: FontWeight.w500),)
      ],
      
    );
  }
}
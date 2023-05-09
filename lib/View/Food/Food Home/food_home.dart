import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/View/Food/Food%20Home/fast_food_item.dart';
import 'package:kwenu_app/View/Food/Food%20Home/fruit_item.dart';
import 'package:kwenu_app/View/Food/Food%20Home/reusable_row_food_home.dart';
import 'package:kwenu_app/View/Food/Food%20Home/salad_item.dart';

import '../../../Const/const.dart';
import 'main_dishes.dart';

class FoodHome extends StatefulWidget {
  const FoodHome({Key? key}) : super(key: key);

  @override
  _FoodHomeState createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 245.h,
                  width: double.infinity,
                  color: red,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Container(
                                  height: 41.h,
                                  width: 41.w,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF98989), shape: BoxShape.circle),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 4.w),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: whiteColor,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                            Row(
                              children: [
                                Icon(Icons.search,color: whiteColor,size: 30,),
                                SizedBox(width: 8.17.w,),
                          
                                  ImageIcon(AssetImage('assets/images/add_to_cart_icon.png'),color: whiteColor,size: 20,)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 7.h,),
                        Text("50% off special \ndeal  in Febuary ",
                        style: TextStyle(color: whiteColor,fontSize: 20.sp,fontWeight: FontWeight.w700),),
                        SizedBox(height: 10.h,),
                        Text('Order now & get 50% \noff', style: TextStyle(color: whiteColor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                        SizedBox(height: 10.h,),
                        Container(
                          width: 97.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: yellow,
                            borderRadius: BorderRadius.circular(50.sp)
                          ),
                          child: Center(
                            child: Text("Order now"
                            ,style: TextStyle(color: black,fontSize: 14.sp,fontWeight: FontWeight.w900),),
                          ),
                        )
                      ],
                    ),
                  ),
                
                ),
                 Positioned(
                   right: 5.w,
                   bottom: 2.h,
                   child: Image(image: AssetImage('assets/images/burger_with_pepsi.png',),
                          height: 162.h, width: 175.w,),
                 )
              ],
            ),
            SizedBox(height: 32.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: ReusableRowFoodHome(food_items: 'Main dishes'),
            ),
             SizedBox(height: 10.h,),
            MainDishes(),
            SizedBox(height: 20.h,),
             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: ReusableRowFoodHome(food_items: 'fast Food'),
            ),
             SizedBox(height: 10.h,),
            FastFood_item(),
            SizedBox(height: 20.h,),
             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: ReusableRowFoodHome(food_items: 'Salad'),
            ),
            SizedBox(height: 20.h,),
            Salad_item(),
             SizedBox(height: 20.h,),
               Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: ReusableRowFoodHome(food_items: 'Fruit'),
            ),
            SizedBox(height: 20.h,),
            Fruit_item(),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}

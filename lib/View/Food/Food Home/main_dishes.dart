import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/View/Food/Food%20Details/food_details.dart';

class MainDishes extends StatefulWidget {
  const MainDishes({Key? key}) : super(key: key);

  @override
  _MainDishesState createState() => _MainDishesState();
}

class _MainDishesState extends State<MainDishes> {
  List<String> main_dishes_item = [
    'assets/images/spaghetti.png',
        'assets/images/pancakes.png',
        'assets/images/spaghetti_2.png',
        'assets/images/steak.png',
        'assets/images/chicken_with_broccoli.png',
        'assets/images/sandwich.png',
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
          return InkWell(
            onTap: (){
              if(index == 0){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => FoodDetails())));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(main_dishes_item[index]),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(18.r)),
            ),
          );
        },
      ),
    );
  }
}

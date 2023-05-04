import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List brands = [
      {
        "option": "Send",
        "image": "assets/images/d1.png",
      },
      {
        "option": "Top up",
        "image": "assets/images/d2.png",
      },
      {
        "option": "Bills",
        "image": "assets/images/d3.png",
      },
      {
        "option": "Loans",
        "image": "assets/images/d4.png",
      },
      {
        "option": "Food",
        "image": "assets/images/d5.png",
      },
      {
        "option": "Ride",
        "image": "assets/images/d6.png",
      },
      {
        "option": "Lifestyle",
        "image": "assets/images/d7.png",
      },
      {
        "option": "More",
        "image": "assets/images/d8.png",
      },
    ];

    return Container(
      height: 230,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: brands.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 7,
              mainAxisSpacing: 18,
              childAspectRatio: 3 / 2,
              crossAxisCount: 4,
              mainAxisExtent: 104),
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    height: 70.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            brands[index]['image'],
                          )),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 2.w, top: 5.h),
                      child: Text(
                        brands[index]['option'],
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: grey,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            );
          }),
    );
  }
}

// Widget multiplecategories(String Product_Category_Name) {
//   return Container(
//     child: Column(
//       children: [
//         Container(
//           height: 68,
//           width: 75,
//           decoration: BoxDecoration(
//               color: Colors.grey,
//               image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: AssetImage(
//                     'images/6712.png',
//                   )),
//               borderRadius: BorderRadius.circular(35)),
//         ),
//         Padding(
//             padding: const EdgeInsets.only(
//               left: 9,
//             ),
//             child: Text('fsdf')),
//       ],
//     ),
//   );
// }

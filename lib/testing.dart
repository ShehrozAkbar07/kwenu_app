// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class Testing extends StatefulWidget {
//   const Testing({super.key});

//   @override
//   State<Testing> createState() => _TestingState();
// }

// class _TestingState extends State<Testing> {
//   String dropdownValue = 'One';
//   List<Map> countries = [
//     {
//       "image": "assets/images/d1.png",
//       'title': "10% Cash Back",
//       'subtitle': "₦200 Cash back - Habib Yoghurt",
//       'Date': 'Apr 01'
//     },
//     {
//       "image": "assets/images/pink.png",
//       'title': "Card Top up",
//       'subtitle': "₦40,000 added to your card",
//       'Date': 'Mar 30'
//     },
//   ];
//   String? _selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             SizedBox(
//               height: 300,
//             ),
//             Text("data"),
//             DropdownButton(
//               icon: const Padding(
//                 padding: EdgeInsets.only(right: 10),
//                 child: Icon(
//                   Icons.keyboard_arrow_down_outlined,
//                   size: 35,
//                 ),
//               ),
//               underline: const SizedBox(),
//               isExpanded: true,
//               hint: ListTile(
//                 leading: Container(
//                   height: 40,
//                   width: 40,
//                   color: Colors.black,
//                 ),
//                 title: Text('mia g'),
//               ),
//               // hint: Padding(
//               //   padding: EdgeInsets.only(left: size.width * 0.02),
//               //   child: const Text(
//               //     "Choose Location",
//               //     style: TextStyle(color: Colors.black, fontSize: 18),
//               //   ),
//               // ),
//               value: _selectedValue,
//               onChanged: (newValue) {
//                 setState(() {
//                   _selectedValue = newValue;
//                 });
//               },
//               items: countries.map((country) {
//                 return DropdownButtonHideUnderline(child: Text(country['subtitle']!));
//               }).toList()

//               //////////////////////////////////////
//               // items: countries.ma((String value) {
//               //   return DropdownMenuItem<String>(
//               //     value: value,
//               //     child: Padding(
//               //       padding: const EdgeInsets.only(left: 8.0),
//               //       child: Text(value),
//               //     ),
//               //   );
//               // }).toList(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:get/get.dart';

class Dimens {
  // height relative to screen size
  static double get height => Get.height;
  static double get height015 => Get.height * 0.015;
  static double get height025 => Get.height * 0.025;
  static double get height016 => Get.height * 0.016;
  static double get height017 => Get.height * 0.017;
  static double get height018 => Get.height * 0.018;
  static double get height019 => Get.height * 0.019;
  static double get height1 => Get.height * 0.01;
  static double get height2 => Get.height * 0.02;
  static double get height3 => Get.height * 0.03;
  static double get height4 => Get.height * 0.04;
  static double get height5 => Get.height * 0.05;
  static double get height6 => Get.height * 0.06;
  static double get height7 => Get.height * 0.07;
  static double get height8 => Get.height * 0.08;
  static double get height9 => Get.height * 0.09;
  static double get height10 => Get.height * 0.1;
  static double get height11 => Get.height * 0.11;
  static double get height12 => Get.height * 0.12;
  static double get height13 => Get.height * 0.13;
  static double get height14 => Get.height * 0.14;
  static double get height15 => Get.height * 0.15;
  static double get height16 => Get.height * 0.16;
  static double get height17 => Get.height * 0.17;
  static double get height18 => Get.height * 0.18;
  static double get height20 => Get.height * 0.20;
  static double get height21 => Get.height * 0.21;
  static double get height22 => Get.height * 0.22;
  static double get height25 => Get.height * 0.25;
  static double get height24 => Get.height * 0.24;
  static double get height28 => Get.height * 0.28;
  static double get height32 => Get.height * 0.32;
  static double get height125 => Get.height * 0.125;

  // width relative to screen size
  static double get width => Get.width;
  static double get width1 => Get.width * 0.01;
  static double get width2 => Get.width * 0.02;
  static double get width3 => Get.width * 0.03;
  static double get width4 => Get.width * 0.04;
  static double get width5 => Get.width * 0.05;
  static double get width6 => Get.width * 0.06;
  static double get width7 => Get.width * 0.07;
  static double get width8 => Get.width * 0.08;
  static double get width9 => Get.width * 0.09;
  static double get width10 => Get.width * 0.10;
  static double get width11 => Get.width * 0.11;
  static double get width12 => Get.width * 0.12;
  static double get width13 => Get.width * 0.13;
  static double get width14 => Get.width * 0.14;
  static double get width15 => Get.width * 0.15;
  static double get width16 => Get.width * 0.16;
  static double get width17 => Get.width * 0.17;
  static double get width20 => Get.width * 0.20;
  static double get width21 => Get.width * 0.21;
  static double get width22 => Get.width * 0.22;
  static double get width24 => Get.width * 0.24;
  static double get width25 => Get.width * 0.25;
  static double get width28 => Get.width * 0.28;
  static double get width30 => Get.width * 0.30;
  static double get width32 => Get.width * 0.32;
  static double get width35 => Get.width * 0.35;
  static double get width36 => Get.width * 0.36;
  static double get width37 => Get.width * 0.37;
  static double get width38 => Get.width * 0.38;
  static double get width40 => Get.width * 0.40;
  static double get width50 => Get.width * 0.50;
  static double get width60 => Get.width * 0.60;
  static double get width70 => Get.width * 0.70;
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';

import '../../../Const/const.dart';

class SpaceRoom extends StatefulWidget {
  const SpaceRoom({Key? key}) : super(key: key);

  @override
  _SpaceRoomState createState() => _SpaceRoomState();
}

class _SpaceRoomState extends State<SpaceRoom> {


  List<Color> light_box_color = [
    primary,
    lightred,
    lightgreen
  ];

  List<Color> dark_box_color = [
    darkblue,
    darkred,
    darkgreen
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        separatorBuilder: ((context, index) => SizedBox(
              height: 15.h,
            )),
        itemCount: 3,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 150.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                          color: light_box_color[index],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          )),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: padding),
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/images/live_icon.png'),
                                      color: whiteColor,
                                      size: 30,
                                    ),
                                    SizedBox(width: 9.h),
                                    Text("Live",style: TextStyle(color: whiteColor,fontSize: 13.sp,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                                Icon(Icons.more_vert_outlined,color: whiteColor,)
                              ],
                            ),
                            SizedBox(height: 15.h),
                            Text("Voice of the South West",style: TextStyle(color: whiteColor,fontSize: 18.sp,fontWeight: FontWeight.w700),),
                             Text("Broadcasting",style: TextStyle(color: whiteColor,fontSize: 13.sp,fontWeight: FontWeight.w400),),
                              SizedBox(height: 12.h),
                            Padding(
                              padding:  EdgeInsets.only(left: 63.w),
                              child: Text("20k+ Listening",style: TextStyle(color: whiteColor,fontSize: 13.sp,fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    left: 20.w,
                    bottom: 12.h,
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/smiling_african_glasses.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                   Positioned(
                    bottom: 12.h,
                    left: 35.w,
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/smiling_african.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                   Positioned(
                    bottom: 12.h,
                    left: 50.w,
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/smiling_african_coat.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 50.h,
                width: 340.w,
                decoration: BoxDecoration(
                    color: dark_box_color[index],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r),
                    )),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: padding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Container(
                                width: 33.w,
                                height: 33.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/smiling_african_blue.png')
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                
                                  Text("Michael Owen",style: TextStyle(color: whiteColor,fontSize: 12.44.sp,fontWeight: FontWeight.w500),),
                                  Text("Host",style: TextStyle(color: whiteColor,fontSize: 10.23.sp,fontWeight: FontWeight.w400),),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 74.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(9.37.r)
                            ),
                            child: Center(
                              child: Text("Follow",style: TextStyle(color: primary,fontSize: 10.sp,fontWeight: FontWeight.w500),)),
                          )
                        ],
                      ),
                    ),
              ),
            ],
          );
        }));
  }
}

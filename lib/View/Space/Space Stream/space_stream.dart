import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kwenu_app/Const/color.dart';
import 'package:kwenu_app/Const/const.dart';

class SpaceStream extends StatefulWidget {
  const SpaceStream({Key? key}) : super(key: key);

  @override
  _SpaceStreamState createState() => _SpaceStreamState();
}

class _SpaceStreamState extends State<SpaceStream> {
  List<bool> onclicks = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  List<String> person_image = [
    'assets/images/singer.png',
    'assets/images/singer_2.png',
    'assets/images/record_person.png',
    'assets/images/farhan_image.png',
    'assets/images/singer_3.png',
    'assets/images/roman_image.png',
    'assets/images/singer.png',
    'assets/images/singer_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            // transform: Matrix4.translationValues(0, -8.h, 0),
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: padding),
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w, //space in horizontal
                mainAxisExtent: 167.h, //height of container
                mainAxisSpacing: 12.w, //space in vertical
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(person_image[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(18.r)),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 47.w),
                                    child: Text(
                                      '20k+ Listening',
                                      style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: (() {
                                            onclicks[index] = !onclicks[index];
                                            setState(() {
                                              
                                            });
                                          }),
                                          child:  onclicks[index] ? Icon(
                                            Icons.favorite_outline_rounded,
                                            color: primary,
                                            size: 20,
                                          ) : Icon(
                                            Icons.favorite,
                                            color: primary,
                                            size: 20,
                                        ),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          '123',
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: whiteColor),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(
                                          CupertinoIcons.chat_bubble,
                                          color: primary,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: whiteColor),
                                        ),
                                      ],
                                    ),
                                    ImageIcon(
                                      AssetImage(
                                          'assets/images/share_icon.png'),
                                      color: whiteColor,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 9.w,
                          bottom: 42.h,
                          child: Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
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
                          bottom: 42.h,
                          left: 17.w,
                          child: Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/smiling_african.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 42.h,
                          left: 27.w,
                          child: Container(
                            width: 15.w,
                            height: 15.h,
                            decoration: BoxDecoration(
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
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

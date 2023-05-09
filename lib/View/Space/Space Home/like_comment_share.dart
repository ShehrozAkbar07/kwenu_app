import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Const/color.dart';

class like_comment_share extends StatefulWidget {
  final String like_text;
  final String comment_text;

  like_comment_share({
    Key? key,
    required this.like_text,
    required this.comment_text,
  }) : super(key: key);

  @override
  State<like_comment_share> createState() => _like_comment_shareState();
}

class _like_comment_shareState extends State<like_comment_share> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Icon(
                Icons.favorite_outline_rounded,
                color: primary,
              ),
              SizedBox(
                width: 6.w,
              ),
              Text(widget.like_text),
              SizedBox(
                width: 16.w,
              ),
              Icon(
                CupertinoIcons.chat_bubble,
                color: primary,
              ),
              SizedBox(
                width: 6.w,
              ),
              Text(widget.comment_text),
            ],
          ),
        ),
        Row(
          children: [
            // ImageIcon(AssetImage('assets/images/share_icon.png')),
            Icon(CupertinoIcons.share),
            SizedBox(
              width: 6.w,
            ),
           
            Text('Share'),
          ],
        ),
      ],
    );
  }
}

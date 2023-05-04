import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kwenu_app/Const/color.dart';

class field extends StatefulWidget {
  final Widget? prefixIcon;
  field({this.prefixIcon});

  @override
  State<field> createState() => _fieldState();
}

class _fieldState extends State<field> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        labelText: "First Name",
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          color: grey,
          fontSize: 14.0,
        ),
        filled: true,
        fillColor: bg,
        contentPadding: const EdgeInsets.only(
          top: 14.0,
          bottom: 12.0,
          left: 14.0,
          right: 14.0,
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide.none,
        ),
      ),
      cursorWidth: 1.5,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        color: black,
        fontSize: 14.0,
      ),
    );
  }
}

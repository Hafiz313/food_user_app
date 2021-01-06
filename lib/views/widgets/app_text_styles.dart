
import 'package:flutter/material.dart';
import 'package:food_user/utils/app_color.dart';



final double textSize = 30;


TextStyle textTitle({FontWeight fontWeight, Color color, double fontSize}) =>
    TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize ?? textSize,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.w800);

TextStyle simpleText({FontWeight fontWeight, Color color, double fontSize}) =>
    TextStyle(
        fontFamily: 'Poppins',
        fontSize:  fontSize ?? 13,
        color: color ?? kTextColor,
        fontWeight: fontWeight ?? FontWeight.w500);
TextStyle boldText({FontWeight fontWeight, Color color, double fontSize}) =>
    TextStyle(
        fontFamily: 'Poppins',
        fontSize: 15.0 ?? textSize,
        color: color ?? kTextColor,
        fontWeight: fontWeight ?? FontWeight.w800
    );

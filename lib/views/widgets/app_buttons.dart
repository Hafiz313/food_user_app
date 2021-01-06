import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_sizes.dart';





Widget rectangleBtn({
  @required String txt,
  @required GestureTapCallback onPressed,
}) {
  return FlatButton(
    color: kColorPrimary,
    textColor: Colors.white,
    disabledColor: Colors.grey,
    disabledTextColor: Colors.black,
    padding: EdgeInsets.all(8.0),
    onPressed:onPressed,
    child: Text(
      txt,
      style: TextStyle(fontSize: 22),
    ),
  );
}
Widget roundBorderBtn({
  @required String txt,
  @required GestureTapCallback onPressed,
  Color textColor,
  Color bgColor,
  Color borderColor,
  double fontSize,
  double padding= 0.1,


}) {
  return FlatButton(
    shape: RoundedRectangleBorder(
      side: BorderSide(
          color:borderColor ?? kGrayText,
          width: 1,
          style: BorderStyle.solid),

      borderRadius: BorderRadius.circular(AppSizes.appHorizontalLg * 0.6),
    ),
    color:  bgColor ?? kWhiteColor,
    textColor: textColor ?? kGrayText,
    disabledColor:bgColor ?? kWhiteColor ,
    disabledTextColor:textColor ?? Colors.white,
    padding: EdgeInsets.all(AppSizes.appVerticalLg * padding),
    onPressed:onPressed,
    child: Text(
      txt,
      style: TextStyle(fontSize: 15 ?? fontSize ,color: textColor ?? kGrayText),
    ),
  );
}
Widget roundRectangleBtn({
  @required String txt,
  @required GestureTapCallback onPressed,
  Color textColor,
  Color bgColor,
  double fontSize,

}) {
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.appHorizontalLg * 0.6),

    ),
    color:  bgColor ?? kRedColor,
    textColor: textColor ?? Colors.white,
    disabledColor:bgColor ?? kRedColor ,
    disabledTextColor:textColor ?? Colors.white,
    padding: EdgeInsets.all(AppSizes.appVerticalLg * 0.3),
    onPressed:onPressed,
    child: Text(
      txt,
      style: TextStyle(fontSize: 15 ?? fontSize ),
    ),
  );
}
Widget roundIFbIcon({
  @required GestureTapCallback onPressed,
  Color textColor,
  Color bgColor,
  double fontSize,

}) {
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.appHorizontalLg * 0.6),
    ),
    color:  bgColor ?? kColorPrimary,
    textColor: textColor ?? Colors.white,
    disabledColor:bgColor ?? kBlueFBColor ,
    disabledTextColor:textColor ?? Colors.white,
    padding: EdgeInsets.all(AppSizes.appVerticalLg * 0.3),
    onPressed:onPressed,
    child: Icon(
      FontAwesomeIcons.facebookF
    ),
  );
}
Widget roundIGoogleIcon({
  @required GestureTapCallback onPressed,
  Color textColor,
  Color bgColor,
  double fontSize,

}) {
  return FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.appHorizontalLg * 0.6),
    ),
    color:  bgColor ?? kColorPrimary,
    textColor: textColor ?? Colors.white,
    disabledColor:bgColor ?? kGreenGoogleColor ,
    disabledTextColor:textColor ?? Colors.white,
    padding: EdgeInsets.all(AppSizes.appVerticalLg * 0.3),
    onPressed:onPressed,
    child: Icon(
        FontAwesomeIcons.google
    ),
  );


}



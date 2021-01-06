import 'package:flutter/material.dart';


final Color kColorPrimary = HexColor("#34A853");
final Color kGrayColor = HexColor("#f1f1f3");
final Color kWhiteColor = HexColor("#ffffff");

final Color kBlackColor = HexColor("#000000");
final Color kTextColor = HexColor("#a3a3a3");
final Color kIconColor = HexColor("#ada8b8");
final Color kBGColor = HexColor("#f7f8fa");
final Color kRedColor = HexColor("#ff5656");
final Color kBlueFBColor = HexColor("#3b5998");
final Color kGreenGoogleColor = HexColor("#4285F4");
final Color kGrayTextColor = HexColor("#a3a3a3");
final Color kGrayText = HexColor("#7f90a2");


/*final Color kColorPrimary = HexColor("#D82B2B");
final Color kColorAccent = HexColor("#252A2D");
final Color kColorGoogle = HexColor("#4385f6");
final Color kColorFacebook = HexColor("#3b5998");
final Color kColorFB = HexColor("#3b5796");
final Color kColorGN = HexColor("#57399d");
final Color kColorScaffoldBg = HexColor("#181820");*/


class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    String _hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (_hexColor.length == 6) {
      _hexColor = "FF$_hexColor";
    }
    return int.parse(_hexColor, radix: 16);
  }
}
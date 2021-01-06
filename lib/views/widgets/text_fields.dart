import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_user/utils/app_color.dart';



Widget simpleTxtField({
  bool ishidden = false,
  @required labelTxt,
  @required keyboardType,
  @required onsaved,
  @required validator,
  Icon prefixIcon,
  String hintText,
  int textLimit,
  bool isLengthLimit = false,
  int lengthLimitValue = 42,
}) {
  return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters:isLengthLimit? [LengthLimitingTextInputFormatter(lengthLimitValue)]: null ,
        maxLength: textLimit ?? null,
        decoration: InputDecoration(
          hintText: hintText ?? null,
            labelText: labelTxt,

            labelStyle: TextStyle(color: kTextColor),
         /* prefixIcon:  Align(
            alignment: Alignment.l,
              child: prefixIcon ?? null),*/
        ),
        obscureText: ishidden,
        keyboardType: keyboardType,
        onSaved: onsaved,
        validator: validator,


      ));
}
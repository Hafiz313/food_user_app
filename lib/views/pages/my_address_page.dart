import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class MyAddressPage extends StatelessWidget {
  static const id = "my_address_page";

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      leftIcon: true,
      menuIcon: true,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Text(
              kMyAddresses,
              style: textTitle(color: kBlackColor),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: AppSizes.appVerticalLg * 0.2,
                horizontal: AppSizes.appVerticalLg * 0.3,
              ),
              decoration:  BoxDecoration(
                  color: kWhiteColor,
                  borderRadius:
                  BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ontario (Toronto)",
                              style: simpleText(color: kBlackColor),
                            ),
                            SizedBox(height: AppSizes.appVerticalLg * 0.1,),
                            Text(
                              "$kWork",
                              style: simpleText(color: kGrayText),
                            ),
                            SizedBox(height: AppSizes.appVerticalLg * 0.1,),
                            Text(
                              "Street 12, Hersnapvej 72",
                              style: simpleText(color: kGrayText),
                            ),
                          ],
                        ),
                        roundBorderBtn(txt: "Edit")


                      ],
                    ),
                  ),
                  Divider(thickness: 1,color: kGrayText,),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Toronto",
                              style: simpleText(color: kBlackColor),
                            ),
                            SizedBox(height: AppSizes.appVerticalLg * 0.1,),
                            Text(
                              "$kHome",
                              style: simpleText(color: kGrayText),
                            ),
                            SizedBox(height: AppSizes.appVerticalLg * 0.1,),
                            Text(
                              "Street 12, Ontario 72",
                              style: simpleText(color: kGrayText),
                            ),
                          ],
                        ),
                        roundBorderBtn(txt: "Edit")


                      ],
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.appHorizontalLg * 0.3
                ),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color:kGrayText,
                        width: 1,
                        style: BorderStyle.solid),

                    borderRadius: BorderRadius.circular(AppSizes.appHorizontalLg * 0.6),
                  ),
                  color:  Colors.transparent,
                  textColor: kGrayText,
                  disabledColor: Colors.transparent ,
                  disabledTextColor:Colors.transparent,
                    padding: EdgeInsets.all(AppSizes.appVerticalLg * 0.3),
                  onPressed:(){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.plus,size: AppSizes.appVerticalLg * 0.3,color: Colors.green,),
                      SizedBox(width: AppSizes.appVerticalLg *0.1,),
                      Text(
                        "$kAddNewAddress",
                        style: TextStyle(fontSize: 15 ,color:kGrayText),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

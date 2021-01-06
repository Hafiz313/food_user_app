import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  static const id = "profile_page";

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
              kProfile,
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
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                      ),
                      child: Text(
                        kMyInformation,
                        style: simpleText(color: kBlackColor),
                      ),
                    ),
                  ),
                  Divider(thickness: 1,color: kGrayText,),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Text(
                      kOrders,
                      style: simpleText(color: kBlackColor),
                    ),
                  ),
                  Divider(thickness: 1,color: kGrayText,),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Text(
                      kMyFavorites,
                      style: simpleText(color: kBlackColor),
                    ),
                  ),
                  Divider(thickness: 1,color: kGrayText,),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Text(
                      kMyAddresses,
                      style: simpleText(color: kBlackColor),
                    ),
                  ),
                  Divider(thickness: 1,color: kGrayText,),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Text(
                      kCoupons,
                      style: simpleText(color: kBlackColor),
                    ),
                  ),
                  Divider(thickness: 1,color: kGrayText,),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.3
                    ),
                    child: Text(
                      kCreditCards,
                      style: simpleText(color: kBlackColor),
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
                child: roundRectangleBtn(txt:kSettings))
          ],
        ),
      ),
    );
  }
}

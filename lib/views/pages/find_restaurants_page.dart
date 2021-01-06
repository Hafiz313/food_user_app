import 'package:flutter/material.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/volidators.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/home_page.dart';
import 'package:food_user/views/pages/sign_up_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';
import 'package:food_user/views/widgets/text_fields.dart';
import 'package:provider/provider.dart';

import 'forgot_email_conform_page.dart';

class FindRestaurantsPage extends StatelessWidget {
  static const id="find_restaurants_page";
  @override
  Widget build(BuildContext context) {
    final _notifier = Provider.of<AuthViewmodel>(context);
    AppSizes().init(context);
    return BaseScaffold(
      body: Container(
        color: kBGColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(
                vertical: AppSizes.appVerticalLg * 0.3
              ),
              child: Text(kFindRestaurants,style: textTitle(color: Colors.black),),
            ),
            Padding(
              padding:  EdgeInsets.only(
               right: AppSizes.appHorizontalLg * 2,
              ),
              child: Text(kFindRestaurantsText,style: simpleText(color: kGrayTextColor,fontSize: 12),),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 6,
            ),
            Text(kLOCATION,style: simpleText(color: kGrayTextColor),),
            Container(
              child: simpleTxtField(
              //  labelTxt: kEmail,
                keyboardType: TextInputType.emailAddress,
                onsaved: (value) => _notifier.signinEmail = value,
                validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                    : validateEmail(value) != true
                    ? "$kEmail is not valid"
                    : null,
              ),
            ),


            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.grey),

                        borderRadius: new BorderRadius.circular(30)
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                            child: Image(image: AssetImage("images/map_pin_pink.png"),)),
                        Expanded(
                            flex: 2,
                            child: Text(kUseYourLocation,style: simpleText(color:kBlackColor ),))

                      ],
                    ),
                      ),
                ),
                SizedBox(width: AppSizes.appVerticalLg * 0.2,),
                Expanded(
                  flex: 2,
                  child: Container(

                      child: roundRectangleBtn(txt:"Next",bgColor: kRedColor,onPressed: (){
                        Navigator.pushNamed(context, HomePage.id);
                      })),
                ),
              ],
            ),




          ],
        ),
      ),

    );
  }
}

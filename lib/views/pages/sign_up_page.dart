import 'package:flutter/material.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/volidators.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/login_screen.dart';
import 'package:food_user/views/pages/phone_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';
import 'package:food_user/views/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  static const id="Sign_page";
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
              child: Text(kSignUp,style: textTitle(color: Colors.black),),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 2,
            ),
            Text(kFullName,style: simpleText(color: kGrayTextColor),),
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
            Text(kEmailAddress,style: simpleText(color: kGrayTextColor),),
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
            Text(kPassword,style: simpleText(color: kGrayTextColor),),
            Container(
              child: simpleTxtField(
                //  labelTxt: kEmail,
                ishidden: true,
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
                  flex: 3,
                  child: Container(
                      child: roundRectangleBtn(txt:kSignUp,onPressed: (){
                        Navigator.pushNamed(context, PhonePage.id);
                      })),
                ),
                SizedBox(width: AppSizes.appHorizontalLg * 0.2,),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: roundIFbIcon()),
                ),
                SizedBox(width: AppSizes.appHorizontalLg * 0.2,),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: roundIGoogleIcon()),
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.3,
            ),
            Row(children: [
              Text("$kAlreadyAccount" ,style: simpleText(color: kGrayTextColor,fontSize: 12,),),
              SizedBox(width: AppSizes.appHorizontalLg *0.2,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, LoginPage.id);
                },
                  child: Text(kLogin ,style: boldText(color: kRedColor,fontSize: 12,),))
            ],),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.3,
            ),


          ],
        ),
      ),

    );
  }
}

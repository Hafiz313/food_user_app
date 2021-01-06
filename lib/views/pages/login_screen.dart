import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/volidators.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/forgot_password_page.dart';
import 'package:food_user/views/pages/home_page.dart';
import 'package:food_user/views/pages/intro_slider.dart';
import 'package:food_user/views/pages/phone_page.dart';
import 'package:food_user/views/pages/sign_up_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';
import 'package:food_user/views/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static const id="login_screen";
  @override
  Widget build(BuildContext context) {
    final _notifier = Provider.of<AuthViewmodel>(context);
    AppSizes().init(context);
    return BaseScaffold(
      leftIcon: true,
      leftIconClick: (){
        Navigator.pushNamed(context, IntroSliderPage.id);
      },

      body: Container(
        color: kGrayColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(
                vertical: AppSizes.appVerticalLg * 0.3
              ),
              child: Text(kLogin,style: textTitle(color: Colors.black),),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 3,
            ),
            Text(kEmailAddress,style: simpleText(color: kGrayTextColor),),
            Container(
              child: simpleTxtField(
                prefixIcon: Icon(FontAwesomeIcons.times,color: Colors.red,),
              //  labelTxt: kEmail,
                keyboardType: TextInputType.emailAddress,
                onsaved: (value) => _notifier.signinEmail = value,
                validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                    : validateEmail(value) != true
                    ? "$kEmail is not valid"
                    : null, labelTxt: null,
              ),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Text(kPassword,style: simpleText(color: kGrayTextColor),),
            Container(
              child: simpleTxtField(
                ishidden: true,
                hintText: "Password",
                //  labelTxt: kEmail,
                keyboardType: TextInputType.visiblePassword,
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
                      child: roundRectangleBtn(txt:kLogin,bgColor: kRedColor,onPressed: (){
                        Navigator.pushNamed(context, HomePage.id);
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
              Text("Need an account?" ,style: simpleText(color: kGrayTextColor,fontSize: 12,),),
              SizedBox(width: AppSizes.appHorizontalLg *0.2,),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SignUpPage.id);
                  },
                  child: Text(kSignUp ,style: boldText(color: kRedColor,fontSize: 12,),))
            ],),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.3,
            ),
            Row(children: [
              Text("forgot your password?" ,style: simpleText(color: kGrayTextColor,fontSize: 12,),),
              SizedBox(width: AppSizes.appHorizontalLg *0.2,),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ForgotPasswordPage.id);
                  },
                  child: Text("Retrive",style: boldText(color: kRedColor,fontSize: 12,),))
            ],)



          ],
        ),
      ),

    );
  }
}

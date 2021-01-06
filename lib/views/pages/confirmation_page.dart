import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/volidators.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/forgot_password_page.dart';
import 'package:food_user/views/pages/login_screen.dart';
import 'package:food_user/views/pages/sign_up_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';
import 'package:food_user/views/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class ConfirmationPhonePage extends StatefulWidget {
  static const id="confirmation_phone_page";
  @override
  _ConfirmationPhonePageState createState() => _ConfirmationPhonePageState();
}

class _ConfirmationPhonePageState extends State<ConfirmationPhonePage> {
  @override
  Widget build(BuildContext context) {
    bool _onEditing = true;
    String _code;
    final _notifier = Provider.of<AuthViewmodel>(context);
    AppSizes().init(context);
    return BaseScaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(

                  vertical: AppSizes.appVerticalLg * 0.3
              ),
              child: Text(kConfirmation,style: textTitle(color: Colors.black),),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(

                  vertical: AppSizes.appVerticalLg * 0.4
              ),
              child: Text(kConfirmationPhoneText,style: simpleText(color: kGrayTextColor),),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Center(

              child: VerificationCode(
                textStyle: TextStyle(fontSize: 20.0, color: kBlackColor),
                underlineColor: kRedColor,
                keyboardType: TextInputType.number,
                autofocus: true,
                length: 4,
                // clearAll is NOT required, you can delete it
                // takes any widget, so you can implement your design
                clearAll: Container(
                  padding:  EdgeInsets.only(top: AppSizes.appHorizontalLg * 0.3),

                  child: Text(
                    'clear all',
                    style: TextStyle(
                        fontSize: 14.0,
                      //  decoration: TextDecoration.underline,
                        color: kRedColor),
                  ),
                ),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 4.5,
            ),


          /*  Row(
              children: [
                Expanded(
                  child: Container(
                    child: simpleTxtField(
                      textLimit: 1,
                      //  labelTxt: kEmail,
                      keyboardType: TextInputType.phone,
                      onsaved: (value) => _notifier.signinEmail = value,
                      validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                          : validateEmail(value) != true
                          ? "$kEmail is not valid"
                          : null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: simpleTxtField(
                      textLimit: 1,
                      //  labelTxt: kEmail,
                      keyboardType: TextInputType.phone,
                      onsaved: (value) => _notifier.signinEmail = value,
                      validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                          : validateEmail(value) != true
                          ? "$kEmail is not valid"
                          : null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: simpleTxtField(
                      textLimit: 1,
                      //  labelTxt: kEmail,
                      keyboardType: TextInputType.phone,
                      onsaved: (value) => _notifier.signinEmail = value,
                      validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                          : validateEmail(value) != true
                          ? "$kEmail is not valid"
                          : null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: simpleTxtField(
                      textLimit: 1,
                      //  labelTxt: kEmail,
                      keyboardType: TextInputType.phone,
                      onsaved: (value) => _notifier.signinEmail = value,
                      validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                          : validateEmail(value) != true
                          ? "$kEmail is not valid"
                          : null,
                    ),
                  ),
                ),
              ],
            ),*/
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Container(
                width: double.infinity,
                child: roundRectangleBtn(txt: "Continue",bgColor: kRedColor,onPressed: (){
                  Navigator.pushNamed(context, LoginPage.id);
                })),
            SizedBox(height: AppSizes.appVerticalLg *0.3,),
            Row(children: [
              Text("dont get it?" ,style: simpleText(color: kGrayTextColor,fontSize: 12,),),
              SizedBox(width: AppSizes.appHorizontalLg *0.2,),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ForgotPasswordPage.id);
                  },
                  child: Text("Resend code",style: boldText(color: kRedColor,fontSize: 12,),))
            ],)




          ],
        ),
      ),

    );
  }
}


import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/volidators.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/confirmation_page.dart';
import 'package:food_user/views/pages/forgot_password_page.dart';
import 'package:food_user/views/pages/login_screen.dart';
import 'package:food_user/views/pages/sign_up_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';
import 'package:food_user/views/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class PhonePage extends StatelessWidget {
  static const id="phone_page";
  @override
  Widget build(BuildContext context) {
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
              child: Text(kPhone,style: textTitle(color: Colors.black),),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(

                  vertical: AppSizes.appVerticalLg * 0.4
              ),
              child: Text(kPhoneText,style: simpleText(color: kGrayTextColor),),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 4.5,
            ),
            Text(kPhone_Number,style: simpleText(color: kGrayTextColor),),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'NO',
                      favorite: ['+47','FR'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),

                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: simpleTxtField(
                      hintText:"300 123 4567",
                      isLengthLimit: true,
                      lengthLimitValue:10 ,

                      //  labelTxt: kEmail,
                      keyboardType: TextInputType.phone,
                    //  onsaved: (value) => _notifier.signinEmail = value,
                      validator: (value) => value.isEmpty ? "$kEmail $kCanNempty"
                          : validateEmail(value) != true
                          ? "$kEmail is not valid"
                          : null,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Container(
              width: double.infinity,
                child: roundRectangleBtn(txt: "Next",bgColor: kRedColor,onPressed: (){
                  Navigator.pushNamed(context, ConfirmationPhonePage.id);
                })),




          ],
        ),
      ),

    );
  }
}

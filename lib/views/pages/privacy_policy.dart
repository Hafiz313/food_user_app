import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class PrivacyPolicyPage extends StatelessWidget {
  static const id = "privacy_policy_page";

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
              kPrivacyPolicy,
              style: textTitle(color: kBlackColor),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),

            Container(
              child: Text("$kPrivacyPolicyText1 \n\n $kPrivacyPolicyText1",style: simpleText(color: kGrayText),)

              ,),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Text(
              "Lorem Ipsum",
              style: boldText(color: kBlackColor),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Container(
              child: Text("$kPrivacyPolicyText1",style: simpleText(color: kGrayText),)

              ,),
          ],
        ),
      ),
    );
  }
}

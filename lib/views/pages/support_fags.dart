import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class SupportFAQsPage extends StatelessWidget {
  static const id = "support_fags_page";

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      leftIcon: true,
      menuIcon: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              Text(
                kSupportFAQs,
                style: textTitle(color: kBlackColor),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.7,
              ),

              Container(
                alignment: Alignment.center,
                child: Text("$kHelloHow",style: simpleText(color: kBlackColor ,fontSize: 18),)

                ,),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.7,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.appVerticalLg * 0.6
                ),
                child: Text("$text1",textAlign:TextAlign.center ,style: simpleText(color: kGrayText ,fontSize: 15),)

                ,),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.7,
              ),
              Text(
                kPaymentsDiscount,
                style: boldText(color: kBlackColor),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              InkWell(
                onTap: (){
                  print("adfadf");
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowRight,color: kRedColor,size: AppSizes.appVerticalLg * 0.3,),
                    SizedBox(width: AppSizes.appVerticalLg * 0.3,),
                    Text("Totam rem aperiam",style: simpleText(color: kBlackColor),)
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              InkWell(
                onTap: (){
                  print("adfadf");
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowRight,color: kRedColor,size: AppSizes.appVerticalLg * 0.3,),
                    SizedBox(width: AppSizes.appVerticalLg * 0.3,),
                    Text("Sed quia consequuntur magni",style: simpleText(color: kBlackColor),)
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              InkWell(
                onTap: (){
                  print("adfadf");
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowRight,color: kRedColor,size: AppSizes.appVerticalLg * 0.3,),
                    SizedBox(width: AppSizes.appVerticalLg * 0.3,),
                    Text("Neque porro quisquam est",style: simpleText(color: kBlackColor),)
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              Text(
                kInformation,
                style: boldText(color: kBlackColor),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              InkWell(
                onTap: (){
                  print("adfadf");
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowRight,color: kRedColor,size: AppSizes.appVerticalLg * 0.3,),
                    SizedBox(width: AppSizes.appVerticalLg * 0.3,),
                    Text("Totam rem aperiam",style: simpleText(color: kBlackColor),)
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              InkWell(
                onTap: (){
                  print("adfadf");
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowRight,color: kRedColor,size: AppSizes.appVerticalLg * 0.3,),
                    SizedBox(width: AppSizes.appVerticalLg * 0.3,),
                    Text("Sed quia consequuntur magni",style: simpleText(color: kBlackColor),)
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.5,
              ),
              InkWell(
                onTap: (){
                  print("adfadf");
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.arrowRight,color: kRedColor,size: AppSizes.appVerticalLg * 0.3,),
                    SizedBox(width: AppSizes.appVerticalLg * 0.3,),
                    Text("Neque porro quisquam est",style: simpleText(color: kBlackColor),)
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

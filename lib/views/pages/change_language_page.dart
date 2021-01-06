import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class ChangeLanguagePage extends StatefulWidget {
  static const id = "change_language_page";
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  int _groupValue = -1;
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
                kLanguage,
                style: textTitle(color: kBlackColor),
              ),
              SizedBox(
                height: AppSizes.appVerticalLg * 0.7,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.appVerticalLg * 0.2,
                  horizontal: AppSizes.appVerticalLg * 0.5,
                ),
                decoration:  BoxDecoration(
                    color: kWhiteColor,
                    borderRadius:
                    BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Flexible(
                          flex: 3,

                        child: Row(children: [
                          Image(image: AssetImage("images/uk_flag.png"),width: AppSizes.appVerticalLg * 0.7,height: AppSizes.appVerticalLg * 0.7,),
                          SizedBox(width: AppSizes.appVerticalLg * 0.2,),
                          Text(kEnglish,style: boldText(color: kBlackColor),),
                        ],),
                      ),
                        Flexible(

                          child: RadioListTile(
                            value: 0,
                            groupValue: _groupValue,
                            onChanged: (newValue) => setState(() => _groupValue = newValue),
                          ),
                        ),

                    ],),
                    SizedBox(height: AppSizes.appVerticalLg * 0.2,),
                    Divider(thickness: 1,color: kGrayText,),
                    SizedBox(height: AppSizes.appVerticalLg * 0.2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                        child: Row(children: [
                          Image(image: AssetImage("images/norway_flag.png"),width: AppSizes.appVerticalLg * 0.7,height: AppSizes.appVerticalLg * 0.7,),
                          SizedBox(width: AppSizes.appVerticalLg * 0.2,),
                          Text(kNorwegian,style: boldText(color: kBlackColor),),

                        ],),
                      ),
                        Flexible(

                          child: RadioListTile(
                            value: 1,
                            groupValue: _groupValue,
                            onChanged: (newValue) => setState(() => _groupValue = newValue),
                          ),
                        ),



                      ],),

                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }

  Widget _myRadioButton({ int value, Function onChanged}) {
    return Container(
      transform: Matrix4.translationValues(-30.0, 0.0, 0.0),
      child: RadioListTile(
        value: value,
        groupValue: _groupValue,
        onChanged: onChanged,
        /*title: Container(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            title,
            style: simpleText(color: kWhiteColor),
          ),
        ),*/
      ),
    );
  }
}




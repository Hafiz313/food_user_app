import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/views/pages/change_language_page.dart';
import 'package:food_user/views/pages/forgot_email_conform_page.dart';
import 'package:food_user/views/pages/login_screen.dart';
import 'package:food_user/views/pages/my_address_page.dart';
import 'package:food_user/views/pages/privacy_policy.dart';
import 'package:food_user/views/pages/profile_page.dart';
import 'package:food_user/views/pages/search_page.dart';
import 'package:food_user/views/pages/support_fags.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

import 'favorites_add_page.dart';

class BaseScaffold extends StatefulWidget {

  final Widget body;
  final GestureTapCallback leftIconClick;
  final GestureTapCallback menuIconClick;
  final bool leftIcon;
  final bool menuIcon;
  final bool drawer;
  final bool padding;

  const BaseScaffold({Key key, this.body, this.leftIconClick, this.menuIconClick, this.leftIcon=false, this.menuIcon=false, this.drawer= false, this.padding=true}) : super(key: key);
  @override
  _BaseScaffoldState createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {

  bool _isNetworkConnected = true;
  Connectivity _connectivity;
  StreamSubscription _subscription;

  @override
  void initState() {
    _connectivity = Connectivity();
    _subscription = _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        setState(() {
          //Conncted to mobile or wifi
          print("----------------------Internet Connected-----------------");
          _isNetworkConnected = true;
        });
      } else {
        setState(() {
          print(
              "----------------------Internet Not Connected-----------------");
          _isNetworkConnected = false;
        });
      }
    });

    super.initState();
  }


  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      backgroundColor: kGrayColor,
        drawer:widget.drawer ? Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
            child: Drawer(
                child: Container(
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: ListView(children: [
                    SizedBox(height: AppSizes.appVerticalLg * 1,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, SearchPage.id);
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Image(image: AssetImage("images/search.png"),),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kSEARCH,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, ProfilePage.id);
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Image(image: AssetImage("images/user.png"),),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kPROFILE,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                       Navigator.pushNamed(context, MyAddressPage.id);
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Image(image: AssetImage("images/map-pin.png"),),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kMY_ADDRESSES,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                        print("adfadf");
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Image(image: AssetImage("images/credit-card.png"),),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kPAYMENT_METHODS,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,ChangeLanguagePage.id);
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Icon(FontAwesomeIcons.globe,color: kRedColor,),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kCHANGE_LANGUAGE,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,FavoritesAddPage.id);
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Icon(FontAwesomeIcons.star,color: kRedColor,),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kMY_FAVORITES,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),

                    InkWell(
                      onTap: (){
                       Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: Row(
                        children: [
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Image(image: AssetImage("images/log-out.png"),),
                          SizedBox(width: AppSizes.appVerticalLg * 0.4,),
                          Text(kLOGOUT,style: simpleText(color: kBlackColor),)
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, PrivacyPolicyPage.id);
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: AppSizes.appHorizontalLg * 0.4
                          ),
                          child: Text(kPrivacyPolicy,style: simpleText(color:kGrayText),)),
                    ),
                    SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, SupportFAQsPage.id);

                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: AppSizes.appHorizontalLg * 0.4
                          ),

                          child: Text(kSupportFAQs,style: simpleText(color:kGrayText),)),
                    ),

                  ]),
                ))) : null,
        body: SafeArea(
          child: SingleChildScrollView(

            child: Container(
              padding:widget.padding ? EdgeInsets.symmetric(
                  vertical: AppSizes.blockSizeVertical * 4,
                  horizontal: AppSizes.blockSizeVertical * 4):null,
              child: Column(
                children: [

                  Stack(

                    children: [
                     Align(
                       alignment: Alignment.topLeft,
                       child: widget.leftIcon? InkWell(
                          onTap: widget.leftIconClick,
                            child: Icon(FontAwesomeIcons.chevronLeft)):null,
                     ),
                      Align(
                        alignment: Alignment.topRight,
                        child: widget.menuIcon ?InkWell(

                            onTap: widget.menuIconClick,
                            child: Icon(FontAwesomeIcons.ellipsisV)):null,
                      ),
                    ],),
                  _isNetworkConnected ?  widget.body : Container(
                    height: AppSizes.screenHeight -
                        AppSizes.blockSizeVertical * 20.0,
                    child: Center(
                      child:
                      Image.asset("images/no_internet.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
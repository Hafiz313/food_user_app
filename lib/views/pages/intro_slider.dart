import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/views/pages/login_screen.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class IntroSliderPage extends StatefulWidget {
  static const id = "Intro_slider_page";

  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    final List<Widget> steps = [
      _step0(context),
      _step1(context),
      _step2(context),
    ];
    AppSizes().init(context);
    return Scaffold(
      body: SafeArea(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return steps[index];
          },
          loop: false,
          itemCount: steps.length,
          pagination: SwiperPagination(
              margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 1)),
        ),
      ),
    );
  }

  Widget _step0(BuildContext context) {
    AppSizes().init(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/slider_one_bg.jpg"), fit: BoxFit.fill)),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 2),
              child: Text(
                kWelcome,
                style: textTitle(color: kWhiteColor),
              ))),
    );
  }

  Widget _step1(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/slider_two_bg.jpg"), fit: BoxFit.fill)),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 2),
              child: Text(
                kWelcome,
                style: textTitle(color: kWhiteColor),
              ))),
    );
  }

  Widget _step2(BuildContext context) {
    AppSizes().init(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/slider_three_bg.jpg"),
              fit: BoxFit.fill)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
                child: Container(
                    margin: EdgeInsets.only(
                        right: AppSizes.appVerticalLg * 0.3,
                        bottom: AppSizes.appVerticalLg * 0.3),
                    padding: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.15,
                        horizontal: AppSizes.appHorizontalLg * 0.3),
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.white)),
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      color: Colors.white,
                    ))),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 2),
                  child: Text(
                    kWelcome,
                    style: textTitle(color: kWhiteColor),
                  ))),
        ],
      ),
    );
  }
}

/* Widget build(BuildContext context) {
    AppSizes().init(context);
    final List<Widget> steps = [
      _step0(context),
      _step1(context),
      _step2(context),
    ];
    AppSizes().init(context);
    return Scaffold(
      body: SafeArea(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return steps[index];
          },
          loop: false,
          itemCount: steps.length,
          pagination:SwiperPagination(margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg *1)),
        ),
      ),
    );
  }
  Widget _step0( BuildContext context) {
    AppSizes().init(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/slider_one_bg.jpg"),
          fit: BoxFit.fill
        )
      ),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 2),
              child: Text(kWelcome,style: textTitle(color: kWhiteColor),))),


    );
  }
  Widget _step1(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/slider_two_bg.jpg"),
              fit: BoxFit.fill
          )
      ),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 2),
              child: Text(kWelcome,style: textTitle(color: kWhiteColor),))),
    );
  }
  Widget _step2(BuildContext context) {
    AppSizes().init(context);
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/slider_three_bg.jpg"),
              fit: BoxFit.fill
          )
      ),

      child: Stack(
        children: [
          Align(
            alignment:Alignment.bottomRight,
            child:InkWell(
                onTap: (){
                  Navigator.pushNamed(context,LoginPage.id);

                },
                child: Container(
                    margin: EdgeInsets.only(right: AppSizes.appVerticalLg * 0.3,bottom: AppSizes.appVerticalLg * 0.3),
                    padding: EdgeInsets.symmetric(
                        vertical: AppSizes.appVerticalLg * 0.15,
                        horizontal: AppSizes.appHorizontalLg * 0.3
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.white)
                    ),

                    child: Icon(FontAwesomeIcons.angleRight,color: Colors.white,))),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: AppSizes.appVerticalLg * 2),
                  child: Text(kWelcome,style: textTitle(color: kWhiteColor),))),
        ],

      ),
    );
  }*/

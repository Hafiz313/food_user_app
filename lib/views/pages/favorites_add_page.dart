import 'package:flutter/material.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/volidators.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/find_restaurants_page.dart';
import 'package:food_user/views/pages/sign_up_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';
import 'package:food_user/views/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class FavoritesAddPage extends StatelessWidget {
  static const id="favorites_add_page";
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
              child: Text(kFavorites,style: textTitle(color: Colors.black),),
            ),

            SizedBox(
              height: AppSizes.appVerticalLg * 6,
            ),
            Text(kAdd_a,style: textTitle(color: Colors.black),),



            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Padding(
              padding:  EdgeInsets.only(
                right: AppSizes.appHorizontalLg * 2,
              ),
              child: Text(kAddaRestaurant,style: simpleText(color: kGrayTextColor,fontSize: 15),),
            ),
            SizedBox(
              height: AppSizes.appVerticalLg * 0.5,
            ),
            Container(
              width: double.infinity,
                child: roundRectangleBtn(txt:kSearch,bgColor: kRedColor,onPressed: (){
                  Navigator.pushNamed(context, FindRestaurantsPage.id);
                })),




          ],
        ),
      ),

    );
  }
}

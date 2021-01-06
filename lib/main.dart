import 'package:flutter/material.dart';
import 'package:food_user/core/viewmodels/auth_view_model.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/views/pages/change_language_page.dart';
import 'package:food_user/views/pages/favorites_add_page.dart';
import 'package:food_user/views/pages/filter_page.dart';
import 'package:food_user/views/pages/my_address_page.dart';
import 'package:food_user/views/pages/privacy_policy.dart';
import 'package:food_user/views/pages/profile_page.dart';
import 'package:food_user/views/pages/search_page.dart';
import 'package:food_user/views/pages/confirmation_page.dart';
import 'package:food_user/views/pages/find_restaurants_page.dart';
import 'package:food_user/views/pages/forgot_email_conform_page.dart';
import 'package:food_user/views/pages/forgot_password_page.dart';
import 'package:food_user/views/pages/home_page.dart';
import 'package:food_user/views/pages/intr_page.dart';
import 'package:food_user/views/pages/intro_slider.dart';
import 'package:food_user/views/pages/login_screen.dart';
import 'package:food_user/views/pages/phone_page.dart';
import 'package:food_user/views/pages/sign_up_page.dart';
import 'package:food_user/views/pages/support_fags.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AuthViewmodel()),

  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: IntroSliderPage.id,
        routes: {
          IntroPage.id :(context) => IntroPage(),
          HomePage.id :(context) => HomePage(),
          LoginPage.id :(context) => LoginPage(),
          SignUpPage.id :(context) => SignUpPage(),
          ForgotPasswordPage.id :(context) => ForgotPasswordPage(),
          PhonePage.id :(context) => PhonePage(),
          ConfirmationPhonePage.id :(context) => ConfirmationPhonePage(),
          ForgotConfromEmailPage.id :(context) => ForgotConfromEmailPage(),
          FindRestaurantsPage.id :(context) => FindRestaurantsPage(),
          IntroSliderPage.id :(context) => IntroSliderPage(),
          SearchPage.id :(context) => SearchPage(),
          ProfilePage.id :(context) => ProfilePage(),
          PrivacyPolicyPage.id :(context) => PrivacyPolicyPage(),
          SupportFAQsPage.id :(context) => SupportFAQsPage(),
          ChangeLanguagePage.id :(context) => ChangeLanguagePage(),
          MyAddressPage.id :(context) => MyAddressPage(),
          FavoritesAddPage.id :(context) => FavoritesAddPage(),
          FilterPage.id :(context) => FilterPage(),
        }
    );
  }
}


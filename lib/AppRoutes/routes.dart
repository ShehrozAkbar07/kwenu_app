import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kwenu_app/View/Check%20Your%20Email/check_your_email.dart';
import 'package:kwenu_app/View/Connect%20Card/connect_card.dart';
import 'package:kwenu_app/View/Dashboard/dashboard.dart';
import 'package:kwenu_app/View/Food/Food%20Details/food_details.dart';
import 'package:kwenu_app/View/Food/Food%20Home/food_home.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Home/bottom_nav.dart';
import 'package:kwenu_app/View/Market%20Place/MarketPlace%20Single%20Product/market_place_single_product.dart';
import 'package:kwenu_app/View/One%20last%20Step/one_last_step.dart';
import 'package:kwenu_app/View/Ride/Ride%20Home/ride_home.dart';
import 'package:kwenu_app/View/SignUp/sign_up.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Category/market_place_category.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20Home/market_place_home.dart';
import 'package:kwenu_app/View/Market%20Place/Market%20Place%20SubCategory/market_place_subcategory.dart';
import 'package:kwenu_app/View/Space/Space%20Home/space_home.dart';

import '../View/Login/login.dart';
import '../View/User Profile Edit/user_profile_edit.dart';
import '../View/User Profile/user_profile.dart';
import '../View/login Returning/login_returning.dart';

class AppRoutes {
  static const String splash = "/";
  static const String login = "/login";
  static const String checkYourEmail = "/checkYourEmail";
  static const String dashboard = "/dashboard";
  static const String userProfile = "/UserProfile";
  static const String connectCard = "/connectCard";

  static const String signUp = "/Signp";
  static const String oneLastStep = "/oneLastStep";
  static const String userProfileEdit = "/userProfileEdit";
  
  static const String loginReturning = "/loginReturning";
  static const String market_place_sub_category = "/market_place_subcategory";
  static const String market_place_category = "/market_place_category";
  static const String marketplace_home = "/marketplace_home";
  static const String marketplace_single_product = "/marketplace_single_product";
  static const String space_home = "/space_home";
   static const String food_home = "/food_home";
  static const String bottom_navi = "/bottom_navi";
  static const String food_details = "/food_details";
  static const String ride_home = "/ride_home";
  

  
  static List<GetPage> appRoutes = [
    GetPage(name: userProfileEdit, page: () => const UserProfileEdit()),
    GetPage(name: connectCard, page: () => const ConnectCard()),
    GetPage(name: dashboard, page: () => const Dashboard()),
    GetPage(name: loginReturning, page: () => const LoginReturning()),
    GetPage(name: login, page: () => const Login()),
    GetPage(name: userProfile, page: () => const UserProfile()),
    GetPage(name: signUp, page: () => const SignUp()),
    GetPage(name: oneLastStep, page: () => const OneLastStep()),
    GetPage(name: checkYourEmail, page: () => const CheckYourEmail()),
    GetPage(name: market_place_sub_category, page: () => const MarketPlaceSubcategory()),
    GetPage(name: market_place_category, page: () => const MarketPlaceCategory()),
     GetPage(name: marketplace_home, page: () => const MarketPlaceHome()),
      GetPage(name: marketplace_single_product, page: () => const MarketPlaceSingleProduct()),
       GetPage(name: space_home, page: () => const SpaceHome()),
         GetPage(name: food_home, page: () => const FoodHome()),
          GetPage(name: bottom_navi, page: () => const BottomNav()),
          GetPage(name: food_details, page: () => const FoodDetails()),
          GetPage(name: ride_home, page: () => const RideHome()),
  ];
}

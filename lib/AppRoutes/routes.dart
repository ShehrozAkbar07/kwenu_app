import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kwenu_app/View/Check%20Your%20Email/check_your_email.dart';
import 'package:kwenu_app/View/Connect%20Card/connect_card.dart';
import 'package:kwenu_app/View/Dashboard/dashboard.dart';
import 'package:kwenu_app/View/One%20last%20Step/one_last_step.dart';
import 'package:kwenu_app/View/SignUp/sign_up.dart';

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
  ];
}

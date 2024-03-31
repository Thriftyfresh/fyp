import 'package:bnews/controller/authentication_controller.dart';
import 'package:bnews/controller/home_controller.dart';
import 'package:bnews/controller/login_controller.dart';
import 'package:bnews/controller/onboarding_controller.dart';
import 'package:bnews/controller/signup_controller.dart';
import 'package:bnews/controller/splash_controller.dart';
import 'package:bnews/views/authentication_page.dart';
import 'package:bnews/views/home_page.dart';
import 'package:bnews/views/login_page.dart';
import 'package:bnews/views/onboarding_page.dart';
import 'package:bnews/views/signup_page.dart';
import 'package:bnews/views/splash_page.dart';
import 'package:get/get.dart';

import 'route_name.dart';

class AppRoutes {
  static getRoutes() => [
        GetPage(
          name: RouteName.splash,
          page: () => SplashPage(),
          binding: BindingsBuilder.put(() => SplashController()),
        ),
        GetPage(
          name: RouteName.onboarding,
          page: () => OnboardingPage(),
          binding: BindingsBuilder.put(() => OnboardingController()),
        ),
        GetPage(
          name: RouteName.authentication,
          page: () => AuthenticationPage(),
          binding: BindingsBuilder.put(() => AuthenticationController()),
        ),
        GetPage(
          name: RouteName.login,
          page: () => LoginPage(),
          binding: BindingsBuilder.put(() => LoginController()),
        ),
        GetPage(
          name: RouteName.signup,
          page: () => SignupPage(),
          binding: BindingsBuilder.put(() => SignupController()),
        ),
        GetPage(
          name: RouteName.home,
          page: () => HomePage(),
          binding: BindingsBuilder.put(() => HomeController()),
        ),
      ];
}

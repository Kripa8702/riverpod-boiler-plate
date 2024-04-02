import 'package:flutter/material.dart';
import 'package:riverpod_boiler_plate/features/authentication/login/view/login_screen.dart';
import 'package:riverpod_boiler_plate/features/authentication/login_or_signup_screen/view/login_or_signup_screen.dart';
import 'package:riverpod_boiler_plate/features/landing_page/view/landing_page.dart';
import 'package:riverpod_boiler_plate/features/splash/view/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginOrSignupScreen = '/login_or_signup_screen';

  static const String loginScreen = '/login_screen';

  static const String landingPageScreen = '/landing_page';

  //on generate route
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case AppRoutes.loginOrSignupScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginOrSignupScreen(),
          settings: settings,
        );

      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case AppRoutes.landingPageScreen:
        return MaterialPageRoute(
          builder: (context) => const LandingPage(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
    }
  }
}

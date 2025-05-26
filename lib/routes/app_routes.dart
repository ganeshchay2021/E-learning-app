import 'package:e_learning_app/view/auth/login_screen.dart';
import 'package:e_learning_app/view/home/home_Screen.dart';
import 'package:e_learning_app/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../view/splash/splash.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onBoarding = '/onBoarding';
  static const String home = '/home';
  static const String login = '/login';

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text("Route not found"),
          ),
        );
    }
  }
}

import 'package:e_learning_app/view/auth/forgot_password.dart';
import 'package:e_learning_app/view/auth/login_screen.dart';
import 'package:e_learning_app/view/auth/sign_up_screen.dart';
import 'package:e_learning_app/view/home/home_screen.dart';
import 'package:e_learning_app/view/home/teacher_home_screen.dart';
import 'package:e_learning_app/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../view/splash/splash.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgot-password';
  static const String teacherHome = '/teacherHome';
  static const String home = '/home';


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
      case signup:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case teacherHome:
        return MaterialPageRoute(
          builder: (_) => const TeacherHomeScreen(),
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

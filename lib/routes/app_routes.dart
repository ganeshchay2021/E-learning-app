import 'package:e_learning_app/view/auth/forgot_password.dart';
import 'package:e_learning_app/view/auth/login_screen.dart';
import 'package:e_learning_app/view/auth/sign_up_screen.dart';
import 'package:e_learning_app/view/courses/widget/course_list_screen.dart';
import 'package:e_learning_app/view/home/home_screen.dart';
import 'package:e_learning_app/view/teacher/teacher_home_screen.dart';
import 'package:e_learning_app/view/onboarding/onboarding_screen.dart';
import 'package:e_learning_app/view/profile/profile_screen.dart';
import 'package:e_learning_app/view/quiz/quiz_list_screen.dart';
import 'package:e_learning_app/view/widgets/main_screen.dart';
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

  //main route
  static const String mainScreen = '/mainScreen';

  //course list routes
  static const String courseList = '/courseList';

  //course list routes
  static const String quizList = '/quizeList';

  //profile route
  static const String profile = '/profile';

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      //splash
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      //onboarding
      case onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      //login
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      //signup
      case signup:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );

      //forgot password
      case forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );

      //techer homescreen
      case teacherHome:
        return MaterialPageRoute(
          builder: (_) => const TeacherHomeScreen(),
        );

      //student home screen
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      //main screen
      case mainScreen:
        return MaterialPageRoute(
          builder: (_) => MainScreen(
            initialIndex: setting.arguments is Map
                ? (setting.arguments as Map<String, dynamic>)['initialIndex']
                    as int?
                : null,
          ),
        );

      //course list
      case courseList:
        return MaterialPageRoute(
          builder: (_) => const CourseListScreen(),
        );

      //quiz list
      case quizList:
        return MaterialPageRoute(
          builder: (_) => const QuizListScreen(),
        );

      //profile
      case profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      //default screen
      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text("Route not found"),
          ),
        );
    }
  }
}

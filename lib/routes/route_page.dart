import 'package:e_learning_app/routes/app_routes.dart';
import 'package:e_learning_app/view/auth/login_screen.dart';
import 'package:e_learning_app/view/home/home_Screen.dart';
import 'package:e_learning_app/view/onboarding/onboarding_screen.dart';
import 'package:e_learning_app/view/splash/splash.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pgaes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
  ];
}

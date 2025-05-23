import 'package:e_learning_app/routes/app_routes.dart';
import 'package:e_learning_app/view/splash/splash.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pgaes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
  ];
}

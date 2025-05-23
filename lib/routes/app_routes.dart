import 'package:flutter/material.dart';

import '../view/splash/splash.dart';

class AppRoutes {
  static const String splash = '/splash';

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
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

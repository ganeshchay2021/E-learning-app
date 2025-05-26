import 'package:e_learning_app/bloc/auth/auth_bloc.dart';
import 'package:e_learning_app/routes/app_routes.dart';
import 'package:e_learning_app/services/storage_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  bool _hasNavigated = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );

    animationController.forward();
    initialized();
  }

  initialized() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted || _hasNavigated) {
        return;
      } else {
        _haldleNavigation(context);
      }
    });
  }

  

  _haldleNavigation(BuildContext context) {
    if (_hasNavigated) {
      return;
    }
    _hasNavigated = true;
    final authState = context.read<AuthBloc>().state;
    if (StorageServices.isFirstTime()) {
      StorageServices.setFirstTime(false);
      //Navigated to onboarding Screen
      Get.offNamed(AppRoutes.onBoarding);
    } else if (authState.userModel != null) {
      //Navigated to Home Screen
      Get.offNamed(AppRoutes.home);
    } else {
      //Navigated to Home Screen
      Get.offNamed(AppRoutes.login);
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: theme.colorScheme.primary,
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated Logo
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 10))
                        ],
                      ),
                      child: Icon(
                        Icons.school,
                        size: 80,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                //App Name
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Column(
                      children: [
                        Text(
                          'EduLearn Pro',
                          style: theme.textTheme.displayMedium!.copyWith(
                              color: theme.colorScheme.surface,
                              letterSpacing: 1.5),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Column(
                      children: [
                        Text(
                          'Learn Anywhere Achieve Everywhere',
                          style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.surface.withOpacity(0.7),
                              letterSpacing: 1.5),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                //Loading
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: CircularProgressIndicator(
                    color: theme.colorScheme.surface,
                    strokeWidth: 3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

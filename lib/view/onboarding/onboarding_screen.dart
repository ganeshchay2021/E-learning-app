import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/models/onboarding_items.dart';
import 'package:e_learning_app/routes/app_routes.dart';
import 'package:e_learning_app/services/storage_services.dart';
import 'package:e_learning_app/view/onboarding/widgets/onboarding_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  final List<OnboardingItems> items = [
    OnboardingItems(
        image: "assets/images/onboarding/onboarding_image1.png",
        title: "Learn Anywhere",
        description:
            "Access your courses anytime, anywhere. Learn at your own pace with our flexible learning platform."),
    OnboardingItems(
        image: "assets/images/onboarding/onboarding_image2.png",
        title: "Interactive Learning",
        description:
            "Engage with interactive quizzes, live sessions, and hands -on projects to enhance your learning experience."),
    OnboardingItems(
        image: "assets/images/onboarding/onboarding_image3.png",
        title: "Track Progress",
        description:
            "Monitor your progress, earn certificates, and achieve your learning goals with detailed analytics.")
  ];

  int _currentIndex = 0;

  Future _onCompletedOnBoarding() async {
    await StorageServices.setFirstTime(false);
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            controller: _pageController,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return OnboardingScreenWidget(
                items: items[index],
              );
            },
          ),

          //skip button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: _onCompletedOnBoarding,
              child: const Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          //botton navigation bar

          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: items.length,
                  effect: const WormEffect(
                    dotColor: Colors.white54,
                    dotHeight: 15,
                    dotWidth: 15,
                    spacing: 8,
                  ),
                ),

                //next button and getstarted button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.lightSurface,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      )),
                  onPressed: () {
                    if (_currentIndex != items.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      );
                    } else {
                      _onCompletedOnBoarding();
                    }
                  },
                  child: Text(
                    _currentIndex == items.length - 1 ? 'Get Started' : 'Next',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.primary,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

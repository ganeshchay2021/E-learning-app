// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/models/onboarding_items.dart';
import 'package:get/get.dart';

class OnboardingScreenWidget extends StatelessWidget {
  final OnboardingItems items;
  const OnboardingScreenWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Get.height * 0.4,
              color: AppColors.primary,
              child: Image.asset(
                items.image,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            //title
            Text(
              items.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                items.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

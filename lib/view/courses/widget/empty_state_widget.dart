import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback? onActionPressed;
  final String actionLabel;
  final IconData icon;
  const EmptyStateWidget(
      {super.key,
      this.title = "No Courses Found",
      this.message = "There are no courses available in this category yet",
      this.onActionPressed,
      this.icon = Icons.school_outlined,
      this.actionLabel = "Go back"});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              size: 80,
              icon,
              color: AppColors.primary.withOpacity(0.5),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: AppColors.secondary),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              onPressed: onActionPressed ?? () => Get.back(),
              label: Text(actionLabel),
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

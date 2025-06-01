import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search courses....",
            hintStyle: TextStyle(
              color: AppColors.secondary.withOpacity(0.7),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.secondary,
            ),
            filled: true,
            fillColor: AppColors.accent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16)
              ,borderSide: BorderSide.none
            )
          ),
        ),
      ),
    );
  }
}

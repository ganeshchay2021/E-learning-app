// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_learning_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:get/get.dart';

import '../../../models/category_model.dart';

class CategorySection extends StatelessWidget {
  final List<CategoryModel> category;
  const CategorySection({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: theme.textTheme.titleLarge!
              .copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return _buildCategoryCard(category[index], context);
            },
          ),
        ),
      ],
    );
  }

  //category card method
  Widget _buildCategoryCard(CategoryModel category, BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 16, bottom: 4),
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: AppColors.primary.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Get.toNamed(AppRoutes.courseList);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                category.icon,
                size: 32,
                color: AppColors.primary,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                category.name,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "${category.courseCount} courses",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.secondary,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

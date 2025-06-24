// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/services/dummy_data_Services.dart';
import 'package:e_learning_app/view/courses/widget/course_filter_dialog.dart';
import 'package:e_learning_app/view/courses/widget/empty_state_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/course_card.dart';

class CourseListScreen extends StatelessWidget {
  final String? categoryId;
  final String? categoryName;
  final bool showBackButton;
  const CourseListScreen({
    super.key,
    this.categoryId,
    this.categoryName,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final courses = categoryId != null
        ? DummyDataServices.getCoursesByCategory(categoryId!)
        : DummyDataServices.courses;

    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            backgroundColor: AppColors.primary,
            pinned: true,
            automaticallyImplyLeading: categoryId != null || showBackButton,
            leading: (categoryId != null || showBackButton)
                ? IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  )
                : null,
            actions: [
              IconButton(
                onPressed: () => _showFilterList(context),
                icon: const Icon(
                  Icons.filter_list,
                  color: AppColors.accent,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.primary,
                    AppColors.primaryLight,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
              titlePadding: const EdgeInsets.all(16),
              title: Text(
                categoryName ?? "All Courses",
                style: theme.textTheme.headlineMedium!.copyWith(
                  color: AppColors.accent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          if (courses.isEmpty)
            SliverFillRemaining(
              child: EmptyStateWidget(
                onActionPressed: () => Get.back(),
              ),
            ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: courses.length,
                (context, index) {
                  final course = courses[index];
                  return CourseCard(
                    course: course,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  _showFilterList(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => const CourseFilterDialog(),
    );
  }
}

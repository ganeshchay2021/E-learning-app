import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/services/dummy_data_Services.dart';
import 'package:e_learning_app/view/quiz/quiz_list/widget/quiz_card.dart';
import 'package:flutter/material.dart';

class QuizListScreen extends StatelessWidget {
  const QuizListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            backgroundColor: AppColors.primary,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.primaryLight,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              titlePadding: const EdgeInsets.all(16),
              title: Text(
                "Quizzes",
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: AppColors.accent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: DummyDataServices.quizzes.length,
                (context, index) {
                  final quiz = DummyDataServices.quizzes[index];
                  return QuizCard(quiz: quiz, onTap: () {
                    
                  },);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

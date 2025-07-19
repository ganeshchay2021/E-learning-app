import 'package:flutter/material.dart';
import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/models/quize_model.dart';

class QuizCard extends StatelessWidget {
  final QuizeModel quiz;
  final VoidCallback? onTap;
  const QuizCard({
    super.key,
    required this.quiz,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 145,
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quiz.title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  quiz.description,
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(color: AppColors.secondary),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    _buildQuizState(theme, Icons.quiz_outlined, '${quiz.questions.length} Questions'),
                    const Spacer(),
                    _buildQuizState(theme, Icons.timer_outlined, '${quiz.timeLimit} minutes'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuizState(ThemeData theme, IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: AppColors.secondary,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          text, style: theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.secondary
          ),
        )
      ],
    );
  }
}

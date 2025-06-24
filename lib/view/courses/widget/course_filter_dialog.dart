import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/view/widgets/common/custom_button.dart';
import 'package:flutter/material.dart';

class CourseFilterDialog extends StatelessWidget {
  const CourseFilterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Filter Courses",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          _buildFilterOptions(context, 'All Level', true),
          _buildFilterOptions(context, 'Beginner', false),
          _buildFilterOptions(context, 'Intermediate', false),
          _buildFilterOptions(context, 'Advanced', false),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Reset"),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Expanded(
                  child: CustomButton(
                text: "Apply",
                onPressed: () {},
                isFullWidth: false,
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterOptions(
      BuildContext context, String label, bool isSelected) {
    return ListTile(
      title: Text(
        label,
      ),
      trailing: isSelected
          ? const Icon(
              Icons.check_circle,
              color: AppColors.primary,
            )
          : const Icon(Icons.circle_outlined),
      onTap: () {
        //implement filter selection logic
        Navigator.pop(context);
      },
    );
  }
}

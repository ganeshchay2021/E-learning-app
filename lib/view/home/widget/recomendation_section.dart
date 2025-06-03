import 'package:e_learning_app/services/dummy_data_Services.dart';
import 'package:e_learning_app/view/home/widget/recomendation_course_card.dart';
import 'package:flutter/material.dart';

class RecomendationSection extends StatelessWidget {
  const RecomendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final courses = DummyDataServices.courses;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommended",
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("See All")),
          ],
        ),
        const SizedBox(height: 16),

        // Horizontal List of Courses
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: courses.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return RecomendationCourseCard(course: courses[index]);
            },
          ),
        ),
      ],
    );
  }
}

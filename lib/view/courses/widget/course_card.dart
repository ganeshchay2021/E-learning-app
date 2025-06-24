import 'package:e_learning_app/models/course_model.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  final CourseModel course;
  const CourseCard({
    super.key,
    required this.course,
  });

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Colors.red,
    );
  }
}

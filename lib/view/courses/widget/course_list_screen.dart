// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CourseListScreen extends StatelessWidget {
  final String? categoryId;
  final String? categoryName;
  final bool showBackButton;
  const CourseListScreen({
    super.key,
    this.categoryId,
    this.categoryName,
    this.showBackButton=false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course List Screen"),
      ),
    );
  }
}

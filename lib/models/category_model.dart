import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  final IconData icon;
  final int courseCount;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.courseCount,
  });
}

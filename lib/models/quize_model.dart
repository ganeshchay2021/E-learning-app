import 'package:e_learning_app/models/questions_model.dart';

class QuizeModel {
  final String id;
  final String title;
  final String description;
  final int timeLimit;
  final List<QuestionsModel> questions;
  final DateTime createdAt;
  final bool isActive;

  QuizeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.timeLimit,
    required this.questions,
    required this.createdAt,
    this.isActive = true,
  });

  factory QuizeModel.fromJson(Map<String, dynamic> map) {
    return QuizeModel(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      timeLimit: map['timeLimit'] ?? '',
      questions: (map['questions'] as List<dynamic>)
          .map((questions) => QuestionsModel.fromJson(questions))
          .toList(),
      createdAt: DateTime.parse(map['createdAt']),
      isActive: map['isActive'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
          'title': title,
      'description': description,
      'timelimit': timeLimit,
      'questions': questions.map((questions)=> questions.toMap()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'isActive': isActive,
    };
  }
}

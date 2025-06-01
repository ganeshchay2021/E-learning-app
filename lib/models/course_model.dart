import 'package:e_learning_app/models/lesson_model.dart';

class CourseModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String instructorId;
  final String categoryId;
  final double price;
  final List<LessonModel> lessons;
  final double rating;
  final int reviewCount;
  final int enrollmentCount;
  final String level;
  final List<String> requirements;
  final List<String> whatYouWillLearn;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isPremium;

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.instructorId,
    required this.categoryId,
    required this.price,
    required this.lessons,
    this.rating = 0,
    this.reviewCount = 0,
    this.enrollmentCount = 0,
    required this.level,
    required this.requirements,
    required this.whatYouWillLearn,
    required this.createdAt,
    required this.updatedAt,
    this.isPremium = false,
  });

  factory CourseModel.fromJson(Map<String, dynamic> map) {
    return CourseModel(
      id: map['id'],
      title: map["title"],
      description: map["description"],
      imageUrl: map['imageUrl'],
      instructorId: map['instructorId'],
      categoryId: map['categoryId'].toDoubel(),
      price: map['price'],
      lessons: (map['lessons'] as List).map((lessons)=> LessonModel.fromJson(lessons)).toList(),
      rating: map['rating']?.toDoubel() ?? 0.0,
      reviewCount: map['reviewCount'] ?? 0,
      enrollmentCount: map['enrollmentCount'] ?? 0,
      level: map['level'],
      requirements: List<String>.from(map['requirements']),
      whatYouWillLearn: List<String>.from(
        map['whatYouWillLearn'],
      ),
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
      isPremium: map['isPremium'] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
        'instructorId': instructorId,
        'categoryId': categoryId,
        'price': price,
        'lessons': lessons.map((lessons)=> lessons?.toJson()).toList(),
        'rating': rating,
        'reviewCount': reviewCount,
        'enrollmentCount': enrollmentCount,
        'level': level,
        'requirements': requirements,
        'whatYouWillLearn': whatYouWillLearn,
        'createdAt': createdAt.toIso8601String(),
        'updated': updatedAt.toIso8601String(),
        'isPremium': isPremium,
      };
}

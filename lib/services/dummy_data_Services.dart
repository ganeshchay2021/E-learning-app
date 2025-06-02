import 'package:e_learning_app/models/lesson_model.dart';
import 'package:e_learning_app/models/questions_model.dart';
import 'package:e_learning_app/models/quize_attempt_model.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/chat_message_model.dart';
import '../models/course_model.dart';
import '../models/quize_model.dart';

class DummyDataServices {
  static final List<CourseModel> courses = [
    CourseModel(
      id: '1',
      title: 'Flutter Development Bootcamp',
      description:
          'Master Flutter and Dart from scratch. Build real-world cross-platform apps.',
      imageUrl: 'https://i.ytimg.com/vi/z9k0cyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_1',
      categoryId: '1',
      price: 99.99,
      lessons: _createFlutterLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic programming knowledge',
        'Computer with internet connection',
        'Dedication to learn'
      ],
      whatYouWillLearn: [
        'Build beautiful native apps',
        'Master Dart programming',
        'State management with GetX',
        'REST API integration',
        'Local data storage',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      updatedAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 245,
      enrollmentCount: 1200,
    ),
    CourseModel(
      id: '2',
      title: 'UI/UX Design Masterclass',
      description:
          'Learn professional UI/UX design from scratch using Figma and Adobe XD.',
      imageUrl:
          'https://img.freepik.com/premium-psd/school-education-admission-youtube-thumbnail-web-banner-templat', // Note: URL might be truncated
      instructorId: 'inst_2',
      categoryId: '2', // Design
      price: 79.99,
      lessons: _createDesignLessons(),
      level: 'Beginner',
      requirements: [
        'No prior experience needed',
        'Figma (free account)',
        'Creative mindset',
      ],
      whatYouWillLearn: [
        'Design principles and theory',
        'User research methods',
        'Wireframing and prototyping',
        'Design systems',
        'Portfolio building'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now(),
      rating: 4.6,
      reviewCount: 189,
      enrollmentCount: 890,
      isPremium: true,
    ),
    CourseModel(
      id: "3",
      title: 'Digital Marketting Essentials',
      description: 'Master Digital Marketting Strategies for business growth',
      imageUrl: 'imageUrl',
      instructorId: 'inst_3',
      categoryId: '3',
      price: 89.99,
      lessons: _createMarketingLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic Marketting Knowledge',
        'Social media familiarity',
        'Google Analytics account'
      ],
      whatYouWillLearn: [
        'SEO optimization',
        'Social media marketting'
            'Email campaingns',
        'Google Analytics',
        'Content marketting'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
      updatedAt: DateTime.now(),
      rating: 4.7,
      reviewCount: 156,
      enrollmentCount: 750,
    ),

    ///form here
    CourseModel(
      id: '4',
      title: 'Advanced Mobile App Architecture',
      description:
          'Learn advanced architectural patterns and best practices for mobile app development.',
      imageUrl:
          'https://img.freepik.com/free-vector/gradient-ui-ux-background_23-2149024129.jpg',
      instructorId: 'inst_4',
      categoryId: '1', // Programming
      price: 129.99,
      lessons: _createArchitectureLessons(),
      level: 'Advanced',
      requirements: [
        'Intermediate programming knowledge',
        'Basic mobile development experience',
        'Understanding of design patterns'
      ],
      whatYouWillLearn: [
        'Clean Architecture principles',
        'SOLID principles in mobile development',
        'State management patterns',
        'Dependency injection',
        'Unit testing and TDD'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      updatedAt: DateTime.now(),
      rating: 4.9,
      reviewCount: 178,
      enrollmentCount: 560,
    ),
    CourseModel(
      id: '5',
      title: 'Motion Design with After Effects',
      description:
          'Create stunning motion graphics and visual effects using Adobe After Effects.',
      imageUrl:
          'https://img.freepik.com/free-vector/flat-design-motion-graphics-background_23-2149489315.jpg',
      instructorId: 'inst_5',
      categoryId: '2', // Design
      price: 89.99,
      lessons: _createMotionDesignLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic Adobe After Effects knowledge',
        'Understanding of design principles',
        'Creative mindset'
      ],
      whatYouWillLearn: [
        'Advanced animation techniques',
        'Character animation',
        'Visual effects creation',
        'Motion graphics principles',
        'Project workflow optimization'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 20)),
      updatedAt: DateTime.now(),
      rating: 4.7,
      reviewCount: 145,
      enrollmentCount: 420,
      isPremium: true,
    ),
    CourseModel(
      id: '6',
      title: 'Financial Management Fundamentals',
      description:
          'Master the basics of financial management and business economics.',
      imageUrl:
          'https://img.freepik.com/free-vector/gradient-stock-market-concept_23-2149166910.jpg',
      instructorId: 'inst_6',
      categoryId: '3', // Business
      price: 74.99,
      lessons: _createFinanceLessons(),
      level: 'Beginner',
      requirements: [
        'Basic math skills',
        'Interest in finance',
        'No prior experience needed'
      ],
      whatYouWillLearn: [
        'Financial statements analysis',
        'Investment basics',
        'Risk management',
        'Budgeting techniques',
        'Business valuation'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 25)),
      updatedAt: DateTime.now(),
      rating: 4.6,
      reviewCount: 98,
      enrollmentCount: 340,
    ),
    CourseModel(
      id: '7',
      title: 'Professional Photography Masterclass',
      description:
          'Learn professional photography techniques from composition to post-processing.',
      imageUrl:
          'https://img.freepik.com/free-photo/professional-camera-blurred-background_169016-10249.jpg',
      instructorId: 'inst_7',
      categoryId: '5', // Photography
      price: 84.99,
      lessons: _createPhotographyLessons(),
      level: 'Beginner',
      requirements: [
        'Digital camera (DSLR or Mirrorless)',
        'Basic computer skills',
        'Adobe Lightroom (optional)'
      ],
      whatYouWillLearn: [
        'Camera basics and settings',
        'Composition techniques',
        'Lighting fundamentals',
        'Post-processing skills',
        'Building a portfolio'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 25)),
      updatedAt: DateTime.now(),
      rating: 4.7,
      reviewCount: 132,
      enrollmentCount: 450,
      isPremium: true,
    ),

    CourseModel(
      id: '8',
      title: 'English Business Communication',
      description: 'Master business English for professional success.',
      imageUrl:
          'https://img.freepik.com/free-vector/language-learning-concept-illustration_114360-6565.jpg',
      instructorId: 'inst_8',
      categoryId: '6', // Language
      price: 69.99,
      lessons: _createLanguageLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic English knowledge',
        'Dedication to practice',
        'Internet connection'
      ],
      whatYouWillLearn: [
        'Business vocabulary',
        'Email writing',
        'Presentation skills',
        'Negotiation techniques',
        'Professional communication'
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 18)),
      updatedAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 167,
      enrollmentCount: 580,
    )
  ];

  static final List<QuizeModel> quizzes = [
    QuizeModel(
      id: '1',
      title: 'Flutter Basics Quiz',
      description: 'Test your knowledge of Flutter fundamentals',
      timeLimit: 30,
      questions: _createFlutterQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
      isActive: true,
    ),
    QuizeModel(
      id: '2',
      title: 'Dart Programming Quiz',
      description: 'Check your understanding of Dart programming concepts',
      timeLimit: 25,
      questions: _createDartQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      isActive: true,
    ),
    QuizeModel(
      id: '2',
      title: 'Dart Programming Quiz',
      description: 'Check your understanding of Dart programming concepts',
      timeLimit: 25,
      questions: _createDartQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      isActive: true,
    ),
    QuizeModel(
      id: '3',
      title: 'State Management Quiz',
      description: 'Test your knowledge of Flutter state management',
      timeLimit: 20,
      questions: _createStateManagementQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      isActive: true,
    ),
  ];

  static final List<QuizeAttemptModel> quizeAttemp = [];

  static List<LessonModel> _createFlutterLessons() {
    return [
      LessonModel(
        id: '1',
        title: 'Introduction to Flutter',
        description:
            'This is a detailed description for Introduction to Flutter',
        videoUrl:
            'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
        duration: 30,
        resources: _createDummyResources(),
        isPreview: true,
        isLocked: false,
      ),
      _createLesson('2', 'Dart Programming Basics', false, false),
      _createLesson('3', 'Building UI with Widgets', false, false),
      _createLesson('4', 'State Management', false, false),
      _createLesson('5', 'Working with APIs', false, false),
      _createLesson('6', 'Local Data Storage', false, false),
    ];
  }

  static List<LessonModel> _createDesignLessons() {
    return [
      _createLesson('1', 'Design Fundamentals', true, false),
      _createLesson('2', 'Color Theory', false, false),
      _createLesson('3', 'Typography Basics', false, false),
      _createLesson('4', 'Layout Design', false, false),
      _createLesson('5', 'Prototyping', false, false),
    ];
  }

  static List<LessonModel> _createMarketingLessons() {
    return [
      _createLesson('1', 'Digital Marketing Overview', true, true),
      _createLesson('2', 'SEO Fundamentals', false, false),
      _createLesson('3', 'Social Media Strategy', false, false),
      _createLesson('4', 'Email Marketing', false, false),
      _createLesson('5', 'Analytics & Reporting', false, false),
    ];
  }

  static List<LessonModel> _createArchitectureLessons() {
    return [
      _createLesson('1', 'Clean Architecture Overview', true, true),
      _createLesson('2', 'SOLID Principles', false, true),
      _createLesson('3', 'Repository Pattern', false, true),
      _createLesson('4', 'Dependency Injection', false, true),
      _createLesson('5', 'Unit Testing', false, false),
    ];
  }

  static List<LessonModel> _createMotionDesignLessons() {
    return [
      _createLesson('1', 'Animation Basics', true, false),
      _createLesson('2', 'Keyframe Animation', false, false),
      _createLesson('3', 'Character Rigging', false, false),
      _createLesson('4', 'Visual Effects', false, false),
      _createLesson('5', 'Project Workflow', false, false),
    ];
  }

  static List<LessonModel> _createFinanceLessons() {
    return [
      _createLesson('1', 'Introduction to Finance', true, false),
      _createLesson('2', 'Financial Statements', false, false),
      _createLesson('3', 'Investment Basics', false, false),
      _createLesson('4', 'Risk Management', false, false),
      _createLesson('5', 'Business Valuation', false, false),
    ];
  }

  static List<LessonModel> _createPhotographyLessons() {
    return [
      _createLesson('1', 'Understanding your camera', true, false),
      _createLesson('2', 'Composition Basics', false, false),
      _createLesson('3', 'Lighting Techniques', false, false),
      _createLesson('4', 'Potrait Photography', false, false),
      _createLesson('5', 'Post-Processing', false, false),
    ];
  }

  static List<LessonModel> _createLanguageLessons() {
    return [
      _createLesson('1', 'Business Vocabulary', true, false),
      _createLesson('2', 'Email Writing', false, false),
      _createLesson('3', 'Presentation Skills', false, false),
      _createLesson('4', 'Negotiation Language', false, false),
      _createLesson('5', 'Professional Communication', false, false),
    ];
  }

  static LessonModel _createLesson(
      String id, String title, bool isPreview, bool isCompleted) {
    return LessonModel(
      id: 'lesson_$id',
      title: title,
      description: 'This is a detailed description for $title',
      videoUrl:
          'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      duration: 30,
      resources: _createDummyResources(),
      isPreview: isPreview,
      isLocked: isPreview,
      isCompleted: isCompleted,
    );
  }

  static List<Resource> _createDummyResources() {
    return [
      Resource(
        id: 'res_1',
        title: 'Lesson Slides',
        type: 'pdf',
        url: 'https://example.com/slides.pdf',
      ),
      Resource(
        id: 'res_2',
        title: 'Exercise Files',
        type: 'zip',
        url: 'https://example.com/exercises.zip',
      ),
    ];
  }

  static CourseModel getCourseById(String id) {
    return courses.firstWhere(
      (course) => course.id == id,
      orElse: () => courses.first,
    );
  }

  static List<CourseModel> getCoursesByCategory(String categoryId) {
    return courses.where((course) => course.categoryId == categoryId).toList();
  }

  static List<CourseModel> getInstructorCourses(String instructorId) {
    return courses
        .where((course) => course.instructorId == instructorId)
        .toList();
  }

  static bool isCourseCompleted(String courseId) {
    final course = getCourseById(courseId);
    return course.lessons.every((lesson) => lesson.isCompleted);
  }

  static List<QuestionsModel> _createFlutterQuizQuestions() {
    return [
      QuestionsModel(
        id: '1',
        text: 'What is Flutter?',
        options: [
          Options(id: 'a', text: 'A UI framework for building native apps'),
          Options(id: 'b', text: 'A programming language'),
          Options(id: 'c', text: 'A database management system'),
          Options(id: 'd', text: 'A design tool'),
        ],
        correctOptionId: 'a',
        points: 1,
      ),
      QuestionsModel(
        id: '2',
        text: 'Which programming language is used in Flutter?',
        options: [
          Options(id: 'a', text: 'Java'),
          Options(id: 'b', text: 'Kotlin'),
          Options(id: 'c', text: 'Dart'),
          Options(id: 'd', text: 'Swift'),
        ],
        correctOptionId: 'c',
        points: 1,
      ),
      //add more question as needed
    ];
  }

  static List<QuestionsModel> _createDartQuizQuestions() {
    return [
      QuestionsModel(
        id: '1',
        text: 'What is Dart?',
        options: [
          Options(id: 'a', text: 'A markup language'),
          Options(id: 'b', text: 'An object-oriented programming language'),
          Options(id: 'c', text: 'A database'),
          Options(id: 'd', text: 'A web browser'),
        ],
        correctOptionId: 'b',
        points: 1,
      ),
    ];
  }

  static List<QuestionsModel> _createStateManagementQuizQuestions() {
    return [
      QuestionsModel(
        id: '1',
        text: 'What is state management in Flutter?',
        options: [
          Options(id: 'a', text: 'Managing app data and UI updates'),
          Options(id: 'b', text: 'Managing device storage'),
          Options(id: 'c', text: 'Managing user authentication'),
          Options(id: 'd', text: 'Managing network requests'),
        ],
        correctOptionId: 'a',
        points: 1,
      ), // Question
      // Add more questions
    ];
  }

  static QuizeModel getQuizById(String id) {
    return quizzes.firstWhere(
      (quiz) => quiz.id == id,
      orElse: () => quizzes.first,
    );
  }

// static void saveQuizAttempt(QuizeAttemptModel attempt) {
//   QuizeAttemptModel.add(attempt);
// }

// static List<QuizeAttemptModel> getQuizAttempts(String userId) {
//   return QuizeAttemptModel.where((attempt) => attempt.userId == userId).toList();
// }

// Add a set to store purchased course IDs
  static final Set<String> _purchasedCourseIds = {};

// Add methods to manage purchased courses
  static bool isCourseUnlocked(String courseId) {
    final course = getCourseById(courseId);
    return !course.isPremium || _purchasedCourseIds.contains(courseId);
  }

  static void addPurchasedCourse(String courseId) {
    _purchasedCourseIds.add(courseId);
  }

  // Teacher-specific dummy data
  static final Map<String, TeacherStats> teacherStats = {
    'inst_1': TeacherStats(
      totalStudents: 1234,
      activeCourses: 8,
      totalRevenue: 12345.67,
      averageRating: 4.8,
      monthlyEnrollments: [156, 189, 234, 278, 312, 289],
      monthlyRevenue: [1234, 1567, 1890, 2100, 2345, 2189],
      studentEngagement: StudentEngagement(
        averageCompletionRate: 0.78,
        averageTimePerLesson: 45,
        activeStudentsThisWeek: 156,
        courseCompletionRates: {
          'Flutter Development Bootcamp': 0.85,
          'Advanced Flutter': 0.72,
          'Flutter State Management': 0.68,
        },
      ), // StudentEngagement
    ), // TeacherStats
  };

  static final Map<String, List<StudentProgress>> studentProgress = {
    'inst_1': [
      StudentProgress(
        studentId: 'student_1',
        studentName: 'John Smith',
        courseId: '1',
        courseName: 'Flutter Development Bootcamp',
        progress: 0.75,
        lastActive: DateTime.now().subtract(const Duration(hours: 2)),
        quizScores: [85, 92, 78, 88],
        completedLessons: 12,
        totalLessons: 16,
        averageTimePerLesson: 45,
      ),
      StudentProgress(
        studentId: 'student_2',
        studentName: 'Emma Wilson',
        courseId: '1',
        courseName: 'Flutter Development Bootcamp',
        progress: 0.60,
        lastActive: DateTime.now().subtract(const Duration(days: 1)),
        quizScores: [95, 88, 82],
        completedLessons: 9,
        totalLessons: 16,
        averageTimePerLesson: 38,
      ),
    ]
  };

  // Helper methods to get teacher-specific data
  static TeacherStats getTeacherStats(String instructorId) {
    final instructorCourses = getInstructorCourses(instructorId);
    final stats = teacherStats[instructorId] ?? TeacherStats.empty();

    // Calculate stats based on instructor's courses only
    return TeacherStats(
      totalStudents: instructorCourses.fold(
          0, (sum, course) => sum + course.enrollmentCount),
      activeCourses: instructorCourses.length,
      totalRevenue: instructorCourses.fold(
          0.0, (sum, course) => sum + (course.price * course.enrollmentCount)),
      averageRating: instructorCourses.isEmpty
          ? 0.0
          : instructorCourses.fold(0.0, (sum, course) => sum + course.rating) /
              instructorCourses.length,
      monthlyEnrollments: stats.monthlyEnrollments,
      monthlyRevenue: stats.monthlyRevenue,
      studentEngagement: stats.studentEngagement,
    );
  }

  static List<StudentProgress> getStudentProgress(String instructorId) {
    final instructorCourses = getInstructorCourses(instructorId);
    final courseIds = instructorCourses.map((c) => c.id).toSet();

    // Filter student progress for instructor's courses only
    return studentProgress[instructorId]
            ?.where((progress) => courseIds.contains(progress.courseId))
            .toList() ??
        [];
  }

  static Stream<List<ChatMessageModel>> getChatMessages(String courseId) {
    return Stream.value(_dummyChats.values
        .expand((messages) => messages)
        .where((msg) => msg.courseId == courseId)
        .toList());
  }

  static Stream<List<ChatMessageModel>> getTeacherChats(String instructorId) {
    return Stream.value(_dummyChats[instructorId] ?? []);
  }

  static Map<String, List<ChatMessageModel>> getTeacherChatsByCourse(
      String instructorId) {
    final Map<String, List<ChatMessageModel>> chatsByCourse = {};
    final messages = _dummyChats[instructorId] ?? [];

    for (var message in messages) {
      if (!chatsByCourse.containsKey(message.courseId)) {
        chatsByCourse[message.courseId] = [];
      }
      chatsByCourse[message.courseId]!.add(message);
    }

    return chatsByCourse;
  }

  static final Map<String, List<ChatMessageModel>> _dummyChats = {
    'inst_1': [
      ChatMessageModel(
        id: '1',
        senderId: 'student_1',
        receiverId: 'inst_1',
        courseId: '1', // Flutter Development Bootcamp
        message: 'Hi, I have a question about state management',
        timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
      ), // ChatMessage
      ChatMessageModel(
        id: '2',
        senderId: 'student_2',
        receiverId: 'inst_1',
        courseId: '1',
        message: 'When is the next live session?',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      ChatMessageModel(
        id: '3',
        senderId: 'student_3',
        receiverId: 'inst_1',
        courseId: '2', // UI/UX Design Masterclass
        message: 'Could you review my latest design project?',
        timestamp: DateTime.now().subtract(const Duration(minutes: 30)),
      ),
    ]
  };

  static void updateLessonStatus(String courseId, String lessonId,
      {bool? isCompleted, bool? isLocked}) {
    final courseIndex = courses.indexWhere((c) => c.id == courseId);
    if (courseIndex != -1) {
      final course = courses[courseIndex];
      final lessonIndex = course.lessons.indexWhere((l) => l.id == lessonId);

      if (lessonIndex != -1) {
        var updatedLesson = course.lessons[lessonIndex].copyWith(
          isCompleted: isCompleted ?? course.lessons[lessonIndex].isCompleted,
          isLocked: isLocked ?? course.lessons[lessonIndex].isLocked,
        );

        courses[courseIndex].lessons[lessonIndex] = updatedLesson;
      }
    }
  }

  static bool isLessonCompleted(String courseId, String lessonId) {
    final course = getCourseById(courseId);
    return course.lessons
        .firstWhere(
          (l) => l.id == lessonId,
          orElse: () => LessonModel(
            id: '',
            title: '',
            description: '',
            videoUrl: '',
            duration: 0,
            resources: [],
          ),
        )
        .isCompleted;
  }
}

// New classes to support teacher-specific data
class TeacherStats {
  final int totalStudents;
  final int activeCourses;
  final double totalRevenue;
  final double averageRating;
  final List<int> monthlyEnrollments;
  final List<double> monthlyRevenue;
  final StudentEngagement studentEngagement;

  TeacherStats({
    required this.totalStudents,
    required this.activeCourses,
    required this.totalRevenue,
    required this.averageRating,
    required this.monthlyEnrollments,
    required this.monthlyRevenue,
    required this.studentEngagement,
  });

  factory TeacherStats.empty() => TeacherStats(
        totalStudents: 0,
        activeCourses: 0,
        totalRevenue: 0,
        averageRating: 0,
        monthlyEnrollments: [],
        monthlyRevenue: [],
        studentEngagement: StudentEngagement.empty(),
      );
}

class StudentEngagement {
  final double averageCompletionRate;
  final int averageTimePerLesson;
  final int activeStudentsThisWeek;
  final Map<String, double> courseCompletionRates;

  StudentEngagement({
    required this.averageCompletionRate,
    required this.averageTimePerLesson,
    required this.activeStudentsThisWeek,
    required this.courseCompletionRates,
  });

  factory StudentEngagement.empty() => StudentEngagement(
        averageCompletionRate: 0,
        averageTimePerLesson: 0,
        activeStudentsThisWeek: 0,
        courseCompletionRates: {},
      );
}

class StudentProgress {
  final String studentId;
  final String studentName;
  final String courseId;
  final String courseName;
  final double progress;
  final DateTime lastActive;
  final List<int> quizScores;
  final int completedLessons;
  final int totalLessons;
  final int averageTimePerLesson;

  StudentProgress(
      {required this.studentId,
      required this.studentName,
      required this.courseId,
      required this.courseName,
      required this.progress,
      required this.lastActive,
      required this.quizScores,
      required this.completedLessons,
      required this.totalLessons,
      required this.averageTimePerLesson});

  double get averageScore {
    if (quizScores.isEmpty) return 0.0;
    return quizScores.reduce((a, b) => a + b) / quizScores.length / 100;
  }

  
}

final List<CategoryModel> category = [
    CategoryModel(
      id: '1',
      name: 'Programming',
      icon: Icons.code,
      courseCount: DummyDataServices.getCoursesByCategory('1').length,
    ),
    CategoryModel(
      id: '2',
      name: 'Design',
      icon: Icons.brush,
      courseCount: DummyDataServices.getCoursesByCategory('2').length,
    ),
    CategoryModel(
      id: '3',
      name: 'Business',
      icon: Icons.business,
      courseCount: DummyDataServices.getCoursesByCategory('3').length,
    ),
    CategoryModel(
      id: '4',
      name: 'Music',
      icon: Icons.music_note,
      courseCount: DummyDataServices.getCoursesByCategory('4').length,
    ),
    CategoryModel(
      id: '5',
      name: 'Photography',
      icon: Icons.camera_alt,
      courseCount: DummyDataServices.getCoursesByCategory('5').length,
    ),
    CategoryModel(
      id: '6',
      name: 'Language',
      icon: Icons.language,
      courseCount: DummyDataServices.getCoursesByCategory('6').length,
    ),
    CategoryModel(
      id: '7',
      name: 'Health and Fitness',
      icon: Icons.fitness_center,
      courseCount: DummyDataServices.getCoursesByCategory('7').length,
    ),
    CategoryModel(
      id: '8',
      name: 'Personal Development',
      icon: Icons.psychology,
      courseCount: DummyDataServices.getCoursesByCategory('8').length,
    ),
  ];

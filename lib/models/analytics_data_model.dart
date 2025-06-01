class AnalyticsDataModel {
  final double completionRate;
  final int totalTimeSpent;
  final double averageQuizScore;
  final Map<String, double> skillProgress;
  final List<String> recommendations;
  final List<WeeklyProgress> weeklyProgress;
  final Map<String, int> learningStreak;
  final int totalCoursesEnrolled;
  final int certificatesEarned;

  AnalyticsDataModel({
    required this.completionRate,
    required this.totalTimeSpent,
    required this.averageQuizScore,
    required this.skillProgress,
    required this.recommendations,
    required this.weeklyProgress,
    required this.learningStreak,
    required this.totalCoursesEnrolled,
    required this.certificatesEarned,
  });

  factory AnalyticsDataModel.fromJson(Map<String, dynamic> map) {
    return AnalyticsDataModel(
      completionRate: map['completionRate'] ?? 0.0,
      totalTimeSpent: map['totalTimeSpent'] ?? 0,
      averageQuizScore: map['averageQuizScore'] ?? 0.0,
      skillProgress: Map<String, double>.from(map['skillProgress'] ?? {}),
      recommendations: List<String>.from(map['recommendations'] ?? []),
      weeklyProgress: List<WeeklyProgress>.from(map['weeklyProgress']
          ?.map((e) => WeeklyProgress(e['day'], e['minutes']))),
      learningStreak: Map<String, int>.from(map['learningStreak'] ?? {}),
      totalCoursesEnrolled: map['totalCoursesEnrolled'] ?? 0,
      certificatesEarned: map['certificatesEarned'] ?? 0,
    );
  }
}

class WeeklyProgress {
  final String day;
  final int minutes;

  WeeklyProgress(
    this.day,
    this.minutes,
  );
}

class QuizeAttemptModel {
  final String id;
  final String quizId;
  final String userId;
  final Map<String, String> answers;
  final int score;
  final DateTime startedAt;
  final DateTime? completedAt;
  final int timeSpent;

  QuizeAttemptModel({
    required this.id,
    required this.quizId,
    required this.userId,
    required this.answers,
    required this.score,
    required this.startedAt,
    this.completedAt,
    required this.timeSpent,
  });

  factory QuizeAttemptModel.fromJson(Map<String, dynamic> map) {
    return QuizeAttemptModel(
        id: map['id'],
        quizId: map['quizId'],
        userId: map['userId'],
        answers: Map<String, String>.from(map['answers'] ?? {}),
        score: map['score'],
        startedAt: DateTime.parse(map['startedAt']),
        completedAt: map['completedAt'] != null
            ? DateTime.parse(map['completedAt'])
            : null,
        timeSpent: map['timeSpent'] ?? 0);
  }

  Map<String, dynamic> toJson() {
    return {
      'quizId': quizId,
      'userId': userId,
      'answers': answers,
      'score': score,
      'startedAt': startedAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(), 
      'timeSpent': timeSpent,
    };
  }
}

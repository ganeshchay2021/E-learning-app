class QuestionsModel {
  final String id;
  final String text;
  final String correctOptionId;
  final int points;
  final List<Options> options;

  QuestionsModel({
    required this.id,
    required this.text,
    required this.correctOptionId,
    this.points = 1,
    required this.options,
  });

  factory QuestionsModel.fromJson(Map<String, dynamic> map) {
    return QuestionsModel(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
      correctOptionId: map['correctOptionId'] ?? '',
      options: (map['options'] as List<dynamic>).map((options)=> Options.fromJson(options)).toList(),
      points: map['points'] ?? 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
      'correctOptionId': correctOptionId,
      'options': options.map((options)=> options.toMap()).toList(),
      'points': points,
    };
  }
}

class Options {
  final String id;
  final String text;

  Options({
    required this.id,
    required this.text,
  });
  factory Options.fromJson(Map<String, dynamic> map) {
    return Options(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
    };
  }
}

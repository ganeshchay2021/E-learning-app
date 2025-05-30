class LessonModel {
  final String id;
  final String title;
  final String description;
  final String videoUrl;
  final int duration;
  final List<Resource> resources;
  final bool isPreview;
  final bool isLocked;
  final bool isCompleted;

  LessonModel({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.duration,
    required this.resources,
    this.isPreview = false,
    this.isLocked = true,
    this.isCompleted = false,
  });

  LessonModel copyWith({
    String? id,
    String? title,
    String? description,
    String? videoUrl,
    int? duration,
    List<Resource>? resources,
    bool? isPreview,
    bool? isLocked,
    bool? isCompleted,
  }) {
    return LessonModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      videoUrl: videoUrl ?? this.videoUrl,
      duration: duration ?? this.duration,
      resources: resources ?? this.resources,
      isPreview: isPreview ?? this.isPreview,
      isLocked: isLocked ?? this.isLocked,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  factory LessonModel.fromJson(Map<String, dynamic> map) {
    return LessonModel(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        videoUrl: map['videoUrl'],
        duration: map['duration'],
        resources:( map['resources'] as List).map((resources)=> Resource.fromJson(resources)).toList(),
        isPreview: map['isPreview'] ?? false,
        isLocked: map['isLocked'] ?? true,
        isCompleted: map['isCompleted'] ?? false);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'videoUrl': videoUrl,
        'duration': duration,
        'resources': resources.map((resources)=> resources.toJson()).toList(),
        'isPreview': isPreview,
        'isLocked': isLocked,
        'isCompleted': isCompleted
      };

  String get videoStrimUrl {
    return videoUrl;
  }
}

class Resource {
  final String id;
  final String title;
  final String type;
  final String url;

  Resource({
    required this.id,
    required this.title,
    required this.type,
    required this.url,
  });

  factory Resource.fromJson(Map<String, dynamic> map) {
    return Resource(
      id: map['id'],
      title: map['title'],
      type: map['type'],
      url: map['url'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'type': type,
        'url': url,
      };
}

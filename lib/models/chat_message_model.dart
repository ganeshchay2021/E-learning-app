class ChatMessageModel {
  final String id;
  final String senderId;
  final String receiverId;
  final String courseId; // Assuming this is for a chat within a course context
  final String message;
  final DateTime timestamp;
  final bool isRead;

  ChatMessageModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.courseId,
    required this.message,
    required this.timestamp,
    this.isRead = false,
  });

  factory ChatMessageModel.fromJson(Map<String, dynamic> map) {
    return ChatMessageModel(
        id: map['id'],
        senderId: map['senderId'],
        receiverId: map['receiverId'],
        courseId: map['courseId'],
        message: map['message'],
        timestamp: map['timestamp'],
        isRead: map['isRead'] ?? false);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'senderId': senderId,
        'receiverId': receiverId,
        'courseId': courseId,
        'message': message,
        'timestamp': timestamp.toIso8601String(),
        'isRead': isRead,
      };
}

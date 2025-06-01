// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ProfileModel extends Equatable {
  final String fullName;
  final String email;
  final String? photoUrl;
  final String? phoneNumber;
  final String? bio;
  final ProfileStats status;

  const ProfileModel({
    required this.fullName,
    required this.email,
    this.photoUrl,
    this.phoneNumber,
    this.bio,
    required this.status,
  });

  ProfileModel copyWith({
    String? fullName,
    String? email,
    String? photoUrl,
    String? phoneNumber,
    String? bio,
    ProfileStats? status,
  }) {
    return ProfileModel(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      bio: bio ?? this.bio,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        fullName,
        email,
        photoUrl,
        phoneNumber,
        bio,
        status,
      ];
}

class ProfileStats extends Equatable {
  final int courseCount;
  final int hoursSpent;
  final double successRate;

  const ProfileStats({
    required this.courseCount,
    required this.hoursSpent,
    required this.successRate,
  });

  @override
  List<Object?> get props => [courseCount, hoursSpent, successRate];
}

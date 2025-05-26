import 'package:e_learning_app/models/user_model.dart';
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthStateChanged extends AuthEvent {
  final UserModel? userModel;

  const AuthStateChanged(this.userModel);

  @override
  List<Object?> get props => [userModel];
}

class RegisterRequested extends AuthEvent {
  final String email;
  final String fullName;
  final String password;
  final UserRole userRole;

  const RegisterRequested(
      {required this.email,
      required this.fullName,
      required this.password,
      required this.userRole});

  @override
  List<Object?> get props => [email, fullName, password, userRole];
}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;

  const LoginRequested({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class LogoutRequested extends AuthEvent {
  final String email;

  const LogoutRequested({required this.email});

  @override
  List<Object?> get props => [email];
}

class UpdateProfileRequested extends AuthEvent {
  final String? fullName;
  final String? photoUrl;

  const UpdateProfileRequested(this.fullName, this.photoUrl);

  @override
  List<Object?> get props => [fullName, photoUrl];
}

class ForgotPasswordRequested extends AuthEvent {
  final String email;

  const ForgotPasswordRequested({required this.email});

  @override
  List<Object?> get props => [email];
}

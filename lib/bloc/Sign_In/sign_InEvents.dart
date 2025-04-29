import 'package:equatable/equatable.dart';

// Base class for all SignIn events
abstract class SignInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignInStarted extends SignInEvent {
  @override
  List<Object?> get props => [];
}

class EmailChanged extends SignInEvent {
  final String email;

  EmailChanged({required this.email});

  @override
  List<Object?> get props => [email];
}

class PasswordChanged extends SignInEvent {
  final String password;

  PasswordChanged({required this.password});

  @override
  List<Object?> get props => [password];
}

class SignInSubmitted extends SignInEvent {
  final String email;
  final String password;

  SignInSubmitted(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class SignInSuccess extends SignInEvent {
  final String userId;
  final String token;

  SignInSuccess(this.userId, this.token);

  @override
  List<Object?> get props => [userId, token];
}

class SignInFailure extends SignInEvent {
  final String errorMessage;

  SignInFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class SignInLoading extends SignInEvent {
  @override
  List<Object?> get props => [];
}

class SignInApi extends SignInEvent {}

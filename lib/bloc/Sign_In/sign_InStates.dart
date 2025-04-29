import 'package:equatable/equatable.dart';

enum SignInStatus { initial, loading, success, error }

class SignInStates extends Equatable {
  const SignInStates(
      {this.email = "",
      this.password = "",
      this.message = "",
      this.signInStatus = SignInStatus.initial});

  final String email;
  final String password;
  final String message;
  final SignInStatus signInStatus;

  SignInStates copyWith({
    String? email,
    String? password,
    String? message,
    SignInStatus? signInStatus,
  }) {
    return SignInStates(
        email: email ?? this.email,
        password: password ?? this.password,
        message: message ?? this.message,
        signInStatus: signInStatus ?? this.signInStatus);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, message, signInStatus];
}

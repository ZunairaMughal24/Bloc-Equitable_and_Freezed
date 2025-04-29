import 'dart:convert';

import 'package:equitable/bloc/Sign_In/sign_InEvents.dart';
import 'package:equitable/bloc/Sign_In/sign_InStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class SignInBloc extends Bloc<SignInEvent, SignInStates> {
  SignInBloc() : super(const SignInStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SignInApi>(_signInApi);
  }
  void _onEmailChanged(EmailChanged event, Emitter<SignInStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignInStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _signInApi(SignInApi event, Emitter<SignInStates> emit) async {
    emit(state.copyWith(
      signInStatus: SignInStatus.loading,
    ));
    Map data = {"email": state.email, "password": state.password};
    try {
      final response =
          await http.post(Uri.parse("https://reqres.in/api/login"), body: data);
      var data1 = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(state.copyWith(
            signInStatus: SignInStatus.success, message: "LogIn Successful"));
      } else {
        emit(state.copyWith(
            signInStatus: SignInStatus.error, message: data1["error"]));
      }
    } catch (e) {
      emit(state.copyWith(
          signInStatus: SignInStatus.error, message: e.toString()));
    }
  }
}

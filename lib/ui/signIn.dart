import 'package:equitable/bloc/Sign_In/signIn_Bloc.dart';
import 'package:equitable/bloc/Sign_In/sign_InEvents.dart';
import 'package:equitable/bloc/Sign_In/sign_InStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // late SignInBloc _signInBloc;
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  // void initState() {
  //   super.initState();
  //   _signInBloc = SignInBloc();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: BlocProvider(
          create: (context) => SignInBloc(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // Email TextField
                TextField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    context.read<SignInBloc>().add(EmailChanged(email: value));
                  },
                ),
                SizedBox(height: 16),
                // Password TextField
                TextField(
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {
                    context
                        .read<SignInBloc>()
                        .add(PasswordChanged(password: value));
                  },
                ),
                SizedBox(height: 20),
                // Sign Up Button
                BlocListener<SignInBloc, SignInStates>(
                  listener: (context, state) {
                    if (state.signInStatus == SignInStatus.error) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                            SnackBar(content: Text(state.message.toString())));
                    }
                    if (state.signInStatus == SignInStatus.loading) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                            const SnackBar(content: Text("submitting")));
                    }
                    if (state.signInStatus == SignInStatus.success) {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                            const SnackBar(content: Text("Login successful")));
                    }
                    // TODO: implement listener
                  },
                  child: BlocBuilder<SignInBloc, SignInStates>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<SignInBloc>().add(SignInApi());
                        },
                        child: Text('Log In'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          minimumSize:
                              Size(double.infinity, 50), // Full width button
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

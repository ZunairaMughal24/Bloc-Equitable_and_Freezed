import 'package:equitable/Bloc_freezed/bloc.dart';
import 'package:equitable/bloc/ToDo/todoBloc.dart';
import 'package:equitable/bloc/counter/counter_bloc.dart';
import 'package:equitable/bloc/favourit/favourit_bloc.dart';
import 'package:equitable/bloc/image_picker/imageBloc.dart';
import 'package:equitable/bloc/post/bloc/post_bloc.dart';
import 'package:equitable/bloc/switch/switchBloc.dart';
import 'package:equitable/cubit/post_cubit.dart';
import 'package:equitable/cubit_freezed/Post_cubit.dart';
import 'package:equitable/cubit_freezed/post.dart';

import 'package:equitable/repository/favouritRepository.dart';
import 'package:equitable/repository/postRepository.dart';

import 'package:equitable/ui/counterScreen.dart';
import 'package:equitable/ui/freeze.dart';
import 'package:equitable/ui/post.dart';
import 'package:equitable/ui/postCubit.dart';
import 'package:equitable/ui/switch.dart';
import 'package:equitable/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';

import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';

void main() {
  runApp(const MyApp());
  DateTime birthDate = DateTime(2000, 03, 28);
  DateTime currentDate = DateTime.now();
  int years = currentDate.year - birthDate.year;
  int months = currentDate.month - birthDate.month;
  int days = currentDate.day - birthDate.day;
  if (days < 0) {
    months--;
    days += DateTime(currentDate.year, currentDate.month, 0).day;
  }
  if (months < 0) {
    years--;
    months += 12;
  }
  print("Your age is : $years years, $months months , $days days");
  List<int> numbers = [2, 3, 55, 1, 20];
  int minValue = numbers[0];
  int maxValue = numbers[0];
  int minIndex = 0;
  int maxIndex = 0;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < minValue) {
      minValue = numbers[i];
      minIndex = i;
    }
    if (numbers[i] > maxValue) {
      maxValue = numbers[i];
      maxIndex = i;
    }
  }
  numbers[minIndex] = maxValue;
  numbers[maxIndex] = minValue;
  print("updated list: $numbers");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(
          create: (_) => Switchbloc(),
        ),
        BlocProvider(create: (_) => Imagebloc(ImagePickerUtils())),
        BlocProvider(create: (_) => Todobloc()),
        BlocProvider(create: (_) => FavouritBloc(Favouritrepository())),
        BlocProvider(create: (_) => PostBloc(Postrepository())),
        BlocProvider(create: (_) => PBloc(Postrepository())),
        BlocProvider(create: (_) => PostCubit(Postrepository())),
        BlocProvider(create: (_) => PostCubitF(Postrepository())),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Equatable',
          theme: ThemeData(brightness: Brightness.dark),
          // home: CounterScreen()),
          home: const Posttc()),
    );
  }
}

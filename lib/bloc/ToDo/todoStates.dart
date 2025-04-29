import 'package:equatable/equatable.dart';

class Todostates extends Equatable {
  final List<String> todoList;
  const Todostates({this.todoList = const []});

  Todostates copyWith({List<String>? todoList}) {
    return Todostates(todoList: todoList?? this. todoList);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [todoList];
}

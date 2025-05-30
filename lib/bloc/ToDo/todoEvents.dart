import 'package:equatable/equatable.dart';

abstract class Todoevents extends Equatable {
  const Todoevents();
}

class AddTodoEvent extends Todoevents {
  final String task;
   const AddTodoEvent ({required this. task});
  @override
  // TODO: implement props
  List<Object?> get props => [task];
}

class RemoveTodoEvent extends Todoevents {
    final Object task;
   const RemoveTodoEvent ({required this. task});
  @override
  // TODO: implement props
  List<Object?> get props => [task];
}

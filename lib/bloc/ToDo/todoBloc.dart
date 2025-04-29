import 'package:equitable/bloc/ToDo/todoEvents.dart';
import 'package:equitable/bloc/ToDo/todoStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Todobloc extends Bloc<Todoevents, Todostates> {
//   This list is where the actual tasks are stored in memory. For example:

// When a user adds a new task, it gets added to this list.
// When a user removes a task, it gets removed from this list.
  final List<String> toDoList = [];
  Todobloc() : super(const Todostates()) {
    on<AddTodoEvent>(_addTodo);
    on<RemoveTodoEvent>(_removeTodo);
  }
  void _addTodo(AddTodoEvent event, Emitter<Todostates> emit) {
    //It adds a new task (received in the event) to the toDoList.
    toDoList.add(event.task);
    //The copyWith() method allows us to modify just the todoList property while keeping other properties of the state unchanged.
    emit(state.copyWith(todoList: List.from(toDoList)));
  }

  void _removeTodo(RemoveTodoEvent event, Emitter<Todostates> emit) {
    toDoList.remove(event.task);
    emit(state.copyWith(todoList: List.from(toDoList)));
  }
}

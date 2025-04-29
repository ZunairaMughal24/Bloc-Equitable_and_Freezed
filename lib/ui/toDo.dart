import 'package:equitable/bloc/ToDo/todoBloc.dart';
import 'package:equitable/bloc/ToDo/todoEvents.dart';
import 'package:equitable/bloc/ToDo/todoStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: BlocBuilder<Todobloc, Todostates>(
        builder: (context, state) {
          if (state.todoList.isEmpty) {
            return Center(child: Text("No todo list found "));
          } else if (state.todoList.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todoList[index]),
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Text(
                      '${index + 1}', // Display the index
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // title: Text("Task #${index + 1}"),
                  trailing: GestureDetector(
                    onTap: () {
                      context
                          .read<Todobloc>()
                          .add(RemoveTodoEvent(task: state.todoList[index]));
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.teal,
                    ),
                  ),
                );
              },
            );
          } else {
            return SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 5; i++) {
            context
                .read<Todobloc>()
                .add(AddTodoEvent(task: "task" + i.toString()));
            // Placeholder for adding events
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}

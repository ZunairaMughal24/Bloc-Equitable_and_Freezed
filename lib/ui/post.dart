import 'dart:developer';

import 'package:equitable/Bloc_freezed/bloc.dart';
import 'package:equitable/Bloc_freezed/events.dart';
import 'package:equitable/Bloc_freezed/states.dart';
import 'package:equitable/bloc/post/bloc/post_bloc.dart';
import 'package:equitable/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Postt extends StatefulWidget {
  const Postt({super.key});

  @override
  State<Postt> createState() => _PostState();
}

class _PostState extends State<Postt> {
  @override
  void initState() {
    super.initState();
    context.read<PBloc>().add(const Events.fetchPost());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Fetching"),
      ),
      body: BlocBuilder<PBloc, States>(
        builder: (context, state) {
          log("State log : $state ");
          switch (state.postStatus) {
            case PostStatus.loading:
              return Center(child: CircularProgressIndicator());
            case PostStatus.failure:
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(child: Text(state.message.toString())),
              );
            case PostStatus.success:
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "search with email",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (filterKey) {
                        context
                            .read<PBloc>()
                            .add(Events.searchString(filterKey));
                      },
                    ),
                  ),
                  Expanded(
                    child: state.searchMessage.isNotEmpty
                        ? Center(child: Text(state.searchMessage.toString()))
                        : ListView.builder(
                            itemCount: state.tempPostList.isEmpty
                                ? state.postList.length
                                : state.tempPostList.length,
                            itemBuilder: (BuildContext context, int index) {
                              if (state.tempPostList.isNotEmpty) {
                                final item = state.tempPostList[index];
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    color:
                                        const Color.fromARGB(255, 70, 66, 65),
                                    child: ListTile(
                                      title: Text(item.email.toString()),
                                      subtitle: Text(item.body.toString()),
                                    ),
                                  ),
                                );
                              } else {
                                final item = state.postList[index];
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    color:
                                        const Color.fromARGB(255, 70, 66, 65),
                                    child: ListTile(
                                      title: Text(item.email.toString()),
                                      subtitle: Text(item.body.toString()),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                  ),
                ],
              );
          }
        },
      ),
    );
  }
}

import 'dart:developer';

import 'package:equitable/Bloc_freezed/bloc.dart';
import 'package:equitable/Bloc_freezed/events.dart';
import 'package:equitable/Bloc_freezed/states.dart';
import 'package:equitable/bloc/post/bloc/post_bloc.dart';
import 'package:equitable/cubit/post_cubit.dart';
import 'package:equitable/cubit_freezed/Post_cubit.dart';
import 'package:equitable/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Posttc extends StatefulWidget {
  const Posttc({super.key});

  @override
  State<Posttc> createState() => _PostState();
}

class _PostState extends State<Posttc> {
  @override
  void initState() {
    super.initState();
    context.read<PostCubitF>().fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Fetching"),
      ),
      body: BlocBuilder<PostCubitF, States>(
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
                        hintText: "search with id",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (filterKey) {
                        context.read<PostCubitF>().searchItem(filterKey);
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

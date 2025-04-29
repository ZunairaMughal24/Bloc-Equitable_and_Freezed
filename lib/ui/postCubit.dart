import 'dart:developer';

import 'package:equitable/bloc/post/bloc/post_bloc.dart';
import 'package:equitable/cubit/post_cubit.dart';
import 'package:equitable/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostC extends StatefulWidget {
  const PostC({super.key});

  @override
  State<PostC> createState() => _PostState();
}

class _PostState extends State<PostC> {
  @override
  void initState() {
    super.initState();
    context.read<PostCubit>().fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Fetching"),
      ),
      body: BlocBuilder<PostCubit, PostState>(
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
                        context.read<PostCubit>().searchItem(filterKey);
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

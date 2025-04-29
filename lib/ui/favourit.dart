import 'dart:developer';

import 'package:equitable/bloc/favourit/favourit_bloc.dart';
import 'package:equitable/bloc/favourit/favourit_event.dart';
import 'package:equitable/bloc/favourit/favourit_state.dart';
import 'package:equitable/model/favModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  void initState() {
    super.initState();
    context.read<FavouritBloc>().add(FetchFavList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("favourite app")),
        actions: [
          BlocBuilder<FavouritBloc, FavouritState>(
            builder: (context, state) {
              return Visibility(
                visible: state.tempFavItemList.isNotEmpty ? true : false,
                child: IconButton(
                  onPressed: () {
                    log("delete");
                    context.read<FavouritBloc>().add(Delete());
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<FavouritBloc, FavouritState>(
          builder: (context, state) {
            log(state.toString());
            switch (state.listStatus) {
              case ListStatus.loading:
                return Center(child: CircularProgressIndicator());
              case ListStatus.success:
                return ListView.builder(
                  itemCount: state.favItemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = state.favItemList[index];
                    return Card(
                      child: ListTile(
                        leading: Checkbox(
                            // value: true,
                            value: state.tempFavItemList.contains(item)
                                ? true
                                : false,
                            onChanged: (value) {
                              if (value!) {
                                context
                                    .read<FavouritBloc>()
                                    .add(SelectItems(item: item));
                              } else {
                                context
                                    .read<FavouritBloc>()
                                    .add(UnSelectItems(item: item));
                              }
                            }),
                        title: Text(item.value.toString()),
                        trailing: IconButton(
                          onPressed: () {
                            favModel favouriteItem = favModel(
                                id: item.id,
                                value: item.value,
                                isFavourit: item.isFavourit ? false : true);

                            context
                                .read<FavouritBloc>()
                                .add(FavItems(item: favouriteItem));
                          },
                          icon: Icon(item.isFavourit
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                        ),
                      ),
                    );
                  },
                );
              // TODO: Handle this case.
              case ListStatus.failure:
                // TODO: Handle this case.
                return Text("something went wrong ");
            }
          },
        ),
      ),
    );
  }
}

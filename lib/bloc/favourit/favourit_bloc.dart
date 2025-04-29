import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:equitable/bloc/favourit/favourit_event.dart';
import 'package:equitable/bloc/favourit/favourit_state.dart';
import 'package:equitable/model/favModel.dart';
import 'package:equitable/repository/favouritRepository.dart';
import 'package:flutter/material.dart';

class FavouritBloc extends Bloc<FavouritEvents, FavouritState> {
  List<favModel> favouritItemList = [];
  List<favModel> tempFavouritItemList = [];
  Favouritrepository favouritrepository;
  FavouritBloc(this.favouritrepository) : super(const FavouritState()) {
    on<FetchFavList>(fetchList);
    on<FavItems>(_addFavItems);
    on<SelectItems>(_selectItem);
    on<UnSelectItems>(_unSelectItem);
    on<Delete>(_deleteTask);
  }

  void fetchList(FetchFavList event, Emitter<FavouritState> emit) async {
    favouritItemList = await favouritrepository.fetchItems();
    emit(state.copyWith(
        favItemList: List.from(favouritItemList),
        listStatus: ListStatus.success));
  }

  void _addFavItems(FavItems event, Emitter<FavouritState> emit) async {
    final index =
        favouritItemList.indexWhere((element) => element.id == event.item.id);
    if (event.item.isFavourit) {
      if (tempFavouritItemList.contains(favouritItemList[index])) {
        tempFavouritItemList.remove(favouritItemList[index]);
        tempFavouritItemList.add(event.item);
      } else {
        //do nothing
      }
    } else {
      if (tempFavouritItemList.contains(favouritItemList[index])) {
        tempFavouritItemList.remove(favouritItemList[index]);
        tempFavouritItemList.add(event.item);
      }
    }

    favouritItemList[index] = event.item;
    emit(state.copyWith(
      favItemList: List.from(favouritItemList),
      tempFavItemList: List.from(tempFavouritItemList),
    ));
  }

  void _selectItem(SelectItems event, Emitter<FavouritState> emit) async {
    log("inside event of select item");
    log("event received data : ${event.item}");
    tempFavouritItemList.add(event.item);
    log("My updated state : ${state.copyWith(tempFavItemList: List.from(tempFavouritItemList))}");
    emit(state.copyWith(tempFavItemList: List.from(tempFavouritItemList)));
  }

  void _unSelectItem(UnSelectItems event, Emitter<FavouritState> emit) async {
    tempFavouritItemList.remove(event.item);
    emit(state.copyWith(tempFavItemList: List.from(tempFavouritItemList)));
  }

  void _deleteTask(Delete event, Emitter<FavouritState> emit) async {
    for (int i = 0; i < tempFavouritItemList.length; i++) {
      favouritItemList.remove(tempFavouritItemList[i]);
    }
    tempFavouritItemList.clear;
    emit(state.copyWith(
      tempFavItemList: List.from(tempFavouritItemList),
      favItemList: List.from(favouritItemList),
    ));
  }
}

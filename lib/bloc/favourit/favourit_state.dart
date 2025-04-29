import 'package:equatable/equatable.dart';
import 'package:equitable/model/favModel.dart';

enum ListStatus { loading, success, failure }

class FavouritState extends Equatable {
  final List<favModel> favItemList;
  final List<favModel> tempFavItemList;
  const FavouritState(
      {this.tempFavItemList = const [],
      this.favItemList = const [],
      this.listStatus = ListStatus.loading});

  final ListStatus listStatus;

  FavouritState copyWith(
      {List<favModel>? favItemList,
      List<favModel>? tempFavItemList,
      ListStatus? listStatus}) {
    return FavouritState(
      favItemList: favItemList ?? this.favItemList,
      tempFavItemList: tempFavItemList ?? this.tempFavItemList,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object> get props => [favItemList, listStatus, tempFavItemList];
}

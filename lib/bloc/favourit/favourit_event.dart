import "package:equatable/equatable.dart";
import "package:equitable/bloc/favourit/favourit_state.dart";
import "package:equitable/model/favModel.dart";

abstract class FavouritEvents extends Equatable {
  const FavouritEvents();

  @override
  List<Object> get props => [];
}

class FetchFavList extends FavouritEvents {}

class FavItems extends FavouritEvents {
  final favModel item;
  const FavItems({required this.item});
}

class SelectItems extends FavouritEvents {
  final favModel item;
  const SelectItems({required this.item});
}

class UnSelectItems extends FavouritEvents {
  final favModel item;
  const UnSelectItems({required this.item});
}

class Delete extends FavouritEvents {}

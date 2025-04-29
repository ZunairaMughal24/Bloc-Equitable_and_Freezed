import 'package:equatable/equatable.dart';

class favModel extends Equatable {
  const favModel(
      {required this.id,
      required this.value,
      this.isDeletion = false,
      this.isFavourit = false});

  final String id;
  final String value;
  final bool isDeletion;
  final bool isFavourit;

  favModel copyWith(
      {String? id, String? value, bool? isDeletion, bool? isFavourit}) {
    return favModel(
        id: id ?? this.id,
        value: value ?? this.value,
        isDeletion: isDeletion ?? this.isDeletion,
        isFavourit: isFavourit ?? this.isFavourit);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, value, isDeletion, isFavourit];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    @Default("") required String name,
  }) = _PersonModel;

  // Place the factory method inside the class
  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}

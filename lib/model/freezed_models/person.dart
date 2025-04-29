import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    required int id,
    required String keycode,
    required String firstName,
    required String? middleName,
    required String? lastName,
    @Default(true) bool isActive,
    String? city,
    String? state,
    String? country,
    String? addressLine1, //
    String? addressLine2,
    String? zipCode, //
    String? email, //
    DateTime? dob, //
    String? person, //
    String? landLine,
    String? alternatePerson,
  }) = _PersonModel;

    // Place the factory method inside the class
  factory PersonModel.fromJson(Map<String, dynamic> json) => _$PersonModelFromJson(json);
}


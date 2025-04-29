import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
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
    String? contact, //
    String? landLine,
    String? alternateContact,
  }) = _ContactModel;

    // Place the factory method inside the class
  factory ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);
}


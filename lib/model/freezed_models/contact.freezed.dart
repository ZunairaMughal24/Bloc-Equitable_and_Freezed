// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return _ContactModel.fromJson(json);
}

/// @nodoc
mixin _$ContactModel {
  int get id => throw _privateConstructorUsedError;
  String get keycode => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get addressLine1 => throw _privateConstructorUsedError; //
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError; //
  String? get email => throw _privateConstructorUsedError; //
  DateTime? get dob => throw _privateConstructorUsedError; //
  String? get contact => throw _privateConstructorUsedError; //
  String? get landLine => throw _privateConstructorUsedError;
  String? get alternateContact => throw _privateConstructorUsedError;

  /// Serializes this ContactModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactModelCopyWith<ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res, ContactModel>;
  @useResult
  $Res call(
      {int id,
      String keycode,
      String firstName,
      String? middleName,
      String? lastName,
      bool isActive,
      String? city,
      String? state,
      String? country,
      String? addressLine1,
      String? addressLine2,
      String? zipCode,
      String? email,
      DateTime? dob,
      String? contact,
      String? landLine,
      String? alternateContact});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res, $Val extends ContactModel>
    implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? keycode = null,
    Object? firstName = null,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? isActive = null,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? zipCode = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? contact = freezed,
    Object? landLine = freezed,
    Object? alternateContact = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      keycode: null == keycode
          ? _value.keycode
          : keycode // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      landLine: freezed == landLine
          ? _value.landLine
          : landLine // ignore: cast_nullable_to_non_nullable
              as String?,
      alternateContact: freezed == alternateContact
          ? _value.alternateContact
          : alternateContact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactModelImplCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$$ContactModelImplCopyWith(
          _$ContactModelImpl value, $Res Function(_$ContactModelImpl) then) =
      __$$ContactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String keycode,
      String firstName,
      String? middleName,
      String? lastName,
      bool isActive,
      String? city,
      String? state,
      String? country,
      String? addressLine1,
      String? addressLine2,
      String? zipCode,
      String? email,
      DateTime? dob,
      String? contact,
      String? landLine,
      String? alternateContact});
}

/// @nodoc
class __$$ContactModelImplCopyWithImpl<$Res>
    extends _$ContactModelCopyWithImpl<$Res, _$ContactModelImpl>
    implements _$$ContactModelImplCopyWith<$Res> {
  __$$ContactModelImplCopyWithImpl(
      _$ContactModelImpl _value, $Res Function(_$ContactModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? keycode = null,
    Object? firstName = null,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? isActive = null,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? zipCode = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? contact = freezed,
    Object? landLine = freezed,
    Object? alternateContact = freezed,
  }) {
    return _then(_$ContactModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      keycode: null == keycode
          ? _value.keycode
          : keycode // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      landLine: freezed == landLine
          ? _value.landLine
          : landLine // ignore: cast_nullable_to_non_nullable
              as String?,
      alternateContact: freezed == alternateContact
          ? _value.alternateContact
          : alternateContact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactModelImpl implements _ContactModel {
  const _$ContactModelImpl(
      {required this.id,
      required this.keycode,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      this.isActive = true,
      this.city,
      this.state,
      this.country,
      this.addressLine1,
      this.addressLine2,
      this.zipCode,
      this.email,
      this.dob,
      this.contact,
      this.landLine,
      this.alternateContact});

  factory _$ContactModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactModelImplFromJson(json);

  @override
  final int id;
  @override
  final String keycode;
  @override
  final String firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? addressLine1;
//
  @override
  final String? addressLine2;
  @override
  final String? zipCode;
//
  @override
  final String? email;
//
  @override
  final DateTime? dob;
//
  @override
  final String? contact;
//
  @override
  final String? landLine;
  @override
  final String? alternateContact;

  @override
  String toString() {
    return 'ContactModel(id: $id, keycode: $keycode, firstName: $firstName, middleName: $middleName, lastName: $lastName, isActive: $isActive, city: $city, state: $state, country: $country, addressLine1: $addressLine1, addressLine2: $addressLine2, zipCode: $zipCode, email: $email, dob: $dob, contact: $contact, landLine: $landLine, alternateContact: $alternateContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.keycode, keycode) || other.keycode == keycode) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.landLine, landLine) ||
                other.landLine == landLine) &&
            (identical(other.alternateContact, alternateContact) ||
                other.alternateContact == alternateContact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      keycode,
      firstName,
      middleName,
      lastName,
      isActive,
      city,
      state,
      country,
      addressLine1,
      addressLine2,
      zipCode,
      email,
      dob,
      contact,
      landLine,
      alternateContact);

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactModelImplCopyWith<_$ContactModelImpl> get copyWith =>
      __$$ContactModelImplCopyWithImpl<_$ContactModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactModelImplToJson(
      this,
    );
  }
}

abstract class _ContactModel implements ContactModel {
  const factory _ContactModel(
      {required final int id,
      required final String keycode,
      required final String firstName,
      required final String? middleName,
      required final String? lastName,
      final bool isActive,
      final String? city,
      final String? state,
      final String? country,
      final String? addressLine1,
      final String? addressLine2,
      final String? zipCode,
      final String? email,
      final DateTime? dob,
      final String? contact,
      final String? landLine,
      final String? alternateContact}) = _$ContactModelImpl;

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$ContactModelImpl.fromJson;

  @override
  int get id;
  @override
  String get keycode;
  @override
  String get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  bool get isActive;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get addressLine1; //
  @override
  String? get addressLine2;
  @override
  String? get zipCode; //
  @override
  String? get email; //
  @override
  DateTime? get dob; //
  @override
  String? get contact; //
  @override
  String? get landLine;
  @override
  String? get alternateContact;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactModelImplCopyWith<_$ContactModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

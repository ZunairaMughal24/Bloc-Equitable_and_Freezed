// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactModelImpl _$$ContactModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactModelImpl(
      id: (json['id'] as num).toInt(),
      keycode: json['keycode'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      zipCode: json['zipCode'] as String?,
      email: json['email'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      contact: json['contact'] as String?,
      landLine: json['landLine'] as String?,
      alternateContact: json['alternateContact'] as String?,
    );

Map<String, dynamic> _$$ContactModelImplToJson(_$ContactModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keycode': instance.keycode,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'isActive': instance.isActive,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'zipCode': instance.zipCode,
      'email': instance.email,
      'dob': instance.dob?.toIso8601String(),
      'contact': instance.contact,
      'landLine': instance.landLine,
      'alternateContact': instance.alternateContact,
    };

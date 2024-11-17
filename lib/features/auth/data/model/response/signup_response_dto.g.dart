// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUPResponseDto _$SignUPResponseDtoFromJson(Map<String, dynamic> json) =>
    SignUPResponseDto(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$SignUPResponseDtoToJson(SignUPResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'user': instance.user,
      'token': instance.token,
    };

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      role: json['role'] as String?,
      Id: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'gender': instance.gender,
      'phone': instance.phone,
      'photo': instance.photo,
      'role': instance.role,
      '_id': instance.Id,
      'createdAt': instance.createdAt,
    };

import 'package:json_annotation/json_annotation.dart';

part 'signup_response_dto.g.dart';

@JsonSerializable()
class SignUPResponseDto {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "error")
  final String? error;
  @JsonKey(name: "user")
  final UserDto? user;
  @JsonKey(name: "token")
  final String? token;

  SignUPResponseDto ({
    this.message,
    this.user,
    this.token,
    this.error,
  });

  factory SignUPResponseDto.fromJson(Map<String, dynamic> json) {
    return _$SignUPResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SignUPResponseDtoToJson(this);
  }
}

@JsonSerializable()
class UserDto {
  @JsonKey(name: "firstName")
  final String? firstName;
  @JsonKey(name: "lastName")
  final String? lastName;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "gender")
  final String? gender;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "photo")
  final String? photo;
  @JsonKey(name: "role")
  final String? role;
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "createdAt")
  final String? createdAt;

  UserDto ({
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.phone,
    this.photo,
    this.role,
    this.Id,
    this.createdAt,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return _$UserDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserDtoToJson(this);
  }
}



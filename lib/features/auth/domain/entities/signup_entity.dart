import 'package:flowery_e_commerce/features/auth/data/model/request/signup_request_dto.dart';

class SignUpEntity {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? rePassword;
  final String? phone;
  final String? gender;

  SignUpEntity({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.rePassword,
    this.phone,
    this.gender,
  });

  SignUpRequestDto toModel() {
    return SignUpRequestDto(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone,
      gender: gender,
    );
  }

}

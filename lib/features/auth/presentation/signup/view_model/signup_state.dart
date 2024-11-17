part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

sealed class SignupAction {}

class GenderSelected extends SignupAction {
  final String gender;

  GenderSelected(this.gender);
}

class SignupActionSelected extends SignupAction {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {
  final SignUPResponseDto signUpResponse;

  SignupSuccess(this.signUpResponse);
}

class SignupError<T> extends SignupState {
  final T? exception;

  SignupError({this.exception});
}

class SignupGenderSelected extends SignupState {
  final String gender;

  SignupGenderSelected(this.gender);
}

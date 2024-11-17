import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flowery_e_commerce/features/auth/data/model/response/signup_response_dto.dart';
import 'package:flowery_e_commerce/features/auth/domain/usecase/auth_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../../core/networking/common/api_result.dart';
import '../../../domain/entities/signup_entity.dart';

part 'signup_state.dart';
@injectable
class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authUseCase) : super(SignupInitial());
  final AuthUseCase _authUseCase;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  String selectedGender = '';

  void doAction(SignupAction action) {
    switch (action) {

      case GenderSelected():
       {
         _selectGender(action.gender);
         break;
       }
      case SignupActionSelected():
        _signUpButtonPressed();
        break;
    }

  }

  void _selectGender(String gender) {
    selectedGender = gender;
    emit(SignupGenderSelected(selectedGender));
  }

  // void _signUp(SignUpEntity signUpEntity) async {
  //   emit(SignupLoading());
  //   var result = await _authUseCase.signUp(signUpEntity);
  //
  //   switch (result) {
  //     case Success<SignUPResponseDto>():
  //       emit(SignupSuccess(result.data!));
  //       break;
  //     case Fail<SignUPResponseDto>():
  //       final exception = result.exception;
  //       emit(SignupError( exception: exception));
  //
  //       break;
  //   }
  // }

  Future<void> _signUp(SignUpEntity signUpEntity) async {
    emit(SignupLoading());
    try {
      var result = await _authUseCase.signUp(signUpEntity);

      switch (result) {
        case Success<SignUPResponseDto>():
        // Handle success
          emit(SignupSuccess(result.data!));
          break;

        case Fail<SignUPResponseDto>():
          final exception = result.exception;

          if (exception is DioError) {
            switch (exception.response?.statusCode) {
              case 400:
                emit(SignupError(exception : exception.response?.data['error'] ?? 'Bad Request'));
                break;
              case 401:
                emit(SignupError(exception : exception.response?.data['error'] ?? 'Unauthorized'));
                break;
              case 409:
                emit(SignupError(exception : exception.response?.data['error'] ?? 'Conflict: User already exists'));
                break;
              case 500:
                emit(SignupError(exception : 'Internal Server Error. Please try again later.'));
                break;
              default:
                emit(SignupError(exception : 'Unexpected error: ${exception.response?.data['error'] ?? 'Unknown error'}'));
                break;
            }
          } else {
            emit(SignupError(exception : result.exception.toString() ?? 'Unknown error'));
          }
          break;
      }
    } catch (e) {
      emit(SignupError(exception: e.toString()));
    }
  }


  void _signUpButtonPressed() {
    if (signUpFormKey.currentState!.validate()) {
      _signUp(SignUpEntity(
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        rePassword: confirmPasswordController.text.trim(),
        phone: phoneNumberController.text.trim(),
        gender: selectedGender,
      ));
    }
  }

}

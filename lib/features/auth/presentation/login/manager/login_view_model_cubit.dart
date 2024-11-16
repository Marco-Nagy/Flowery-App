import 'package:bloc/bloc.dart';
import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/core/networking/error/ErrorModel.dart';
import 'package:flowery_e_commerce/core/networking/error/error_handler.dart';
import 'package:flowery_e_commerce/di/di.dart';
import 'package:flowery_e_commerce/features/auth/presentation/login/manager/login_action.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../data/data_sources/contracts/offline_data_source.dart';
import '../../../domain/entities/response/login_response_entity.dart';
import '../../../domain/use_cases/auth_use_case.dart';

part 'login_view_model_state.dart';

@injectable
class LoginViewModel extends Cubit<LoginViewModelState> {
  final AuthUseCase _authUseCase;
  final OfflineDataSource _offlineDataSource = getIt<OfflineDataSource>();

  @factoryMethod
  LoginViewModel(this._authUseCase) : super(LoginViewModelInitial());

  void doAction(LoginScreenAction action) {
    switch (action) {
      case LoginAction():
        _login(action);
    }
  }

  Future<void> _login(LoginAction action) async {
    emit(LoginViewModelLoading());
    var result = await _authUseCase.login(action.request);
    switch (result) {
      case Success<LoginResponseEntity>():
        emit(LoginViewModelSuccess(result.data));
        await _offlineDataSource.cacheToken(result.data.token ?? "");
      case Fail<LoginResponseEntity>():
        emit(LoginViewModelError(ErrorHandler.handle(result.exception!)));
    }
  }
}

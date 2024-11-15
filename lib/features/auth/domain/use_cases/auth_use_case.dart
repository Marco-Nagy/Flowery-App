import 'package:injectable/injectable.dart';

import '../../../../core/networking/common/api_result.dart';
import '../contracts/auth_repo.dart';
import '../entities/request/login_request_entity.dart';
import '../entities/response/login_response_entity.dart';

@injectable
class AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<ApiResult<LoginResponseEntity>> login(
          LoginRequestEntity request) async =>
      await _authRepository.login(request);
}
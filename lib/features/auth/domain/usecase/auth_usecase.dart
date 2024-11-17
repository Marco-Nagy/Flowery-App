import 'package:injectable/injectable.dart';

import '../../../../core/networking/common/api_result.dart';
import '../../data/model/response/signup_response_dto.dart';
import '../contracts/repo/auth_repo.dart';
import '../entities/signup_entity.dart';

@injectable
class AuthUseCase {
  final AuthRepo _authRepo;

  AuthUseCase(this._authRepo);

  Future<ApiResult<SignUPResponseDto>> signUp(SignUpEntity signUpEntity) async {
    return await _authRepo.signUp(signUpEntity: signUpEntity);
  }
}
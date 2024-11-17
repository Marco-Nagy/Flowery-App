import 'package:flowery_e_commerce/features/auth/data/model/response/signup_response_dto.dart';

import '../../../../../core/networking/common/api_result.dart';
import '../../entities/signup_entity.dart';

abstract class AuthRepo {
  Future<ApiResult<SignUPResponseDto>> signUp(
      {required SignUpEntity signUpEntity});
}

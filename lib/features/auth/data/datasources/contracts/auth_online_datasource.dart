import 'package:flowery_e_commerce/features/auth/data/model/request/signup_request_dto.dart';

import '../../../../../core/networking/common/api_result.dart';
import '../../../domain/entities/signup_entity.dart';
import '../../model/response/signup_response_dto.dart';

abstract class  AuthOnlineDatasource {
  Future<ApiResult<SignUPResponseDto>> signUp(
      {required SignUpRequestDto signUpRequestDto});
}
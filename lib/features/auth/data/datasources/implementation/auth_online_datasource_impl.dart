import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/auth/data/datasources/contracts/auth_online_datasource.dart';
import 'package:flowery_e_commerce/features/auth/data/model/request/signup_request_dto.dart';
import 'package:flowery_e_commerce/features/auth/data/model/response/signup_response_dto.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api/api_manager.dart';
import '../../../../../core/networking/api_execute.dart';

@Injectable(as: AuthOnlineDatasource)
class AuthOnlineDataSourceImpl implements AuthOnlineDatasource {
  final ApiManager apiManager;

  AuthOnlineDataSourceImpl({required this.apiManager});

  @override
  Future<ApiResult<SignUPResponseDto>> signUp(
      {required SignUpRequestDto signUpRequestDto}) {
    return executeApi(() async {
      var response =
          await apiManager.signUp(signUpRequestDto);
      return   response;
    });
  }
}

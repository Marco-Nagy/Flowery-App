import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/auth/data/datasources/contracts/auth_online_datasource.dart';

import 'package:flowery_e_commerce/features/auth/data/model/response/signup_response_dto.dart';

import 'package:flowery_e_commerce/features/auth/domain/entities/signup_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/contracts/repo/auth_repo.dart';

@Injectable(as: AuthRepo)
class AuthRepositoryImpl implements AuthRepo {
  final AuthOnlineDatasource authOnlineDatasource;

  AuthRepositoryImpl(this.authOnlineDatasource);

  @override
  Future<ApiResult<SignUPResponseDto>> signUp(
      {required SignUpEntity signUpEntity}) async {
    var response = await authOnlineDatasource.signUp(
        signUpRequestDto: signUpEntity.toModel());
    return response;
  }
}

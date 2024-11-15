import 'package:flowery_e_commerce/core/networking/api/api_manager.dart';
import 'package:flowery_e_commerce/core/networking/api_execute.dart';
import 'package:flowery_e_commerce/core/networking/common/api_result.dart';

import 'package:flowery_e_commerce/features/auth/domain/entities/request/login_request_entity.dart';

import 'package:flowery_e_commerce/features/auth/domain/entities/response/login_response_entity.dart';
import 'package:flowery_e_commerce/features/auth/mappers/auth_mapper.dart';
import 'package:injectable/injectable.dart';

import '../contracts/auth_online_data_source.dart';

@Injectable(as: AuthOnlineDataSource)
class AuthOnlineDataSourceImpl implements AuthOnlineDataSource {

  final ApiManager apiManager;

  @factoryMethod
  AuthOnlineDataSourceImpl(this.apiManager);

  @override
  Future<ApiResult<LoginResponseEntity>> login(LoginRequestEntity request) {
    return executeApi(() async {
      var response = await apiManager.login(AuthMapper.toDto(request));
      return AuthMapper.toEntity(response);
    });
  }
}

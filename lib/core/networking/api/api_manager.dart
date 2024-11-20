
import 'package:dio/dio.dart';
import 'package:flowery_e_commerce/features/home/best_seller/data/models/best_seller_response_model_entity.dart';
import 'package:flowery_e_commerce/features/home/catogeries/data/models/categories_response_model_entity.dart';
import 'package:flowery_e_commerce/features/home/occasions/data/models/occasions_response_model_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../features/auth/data/models/request/signup_request_dto.dart';
import '../../../features/auth/data/models/response/signup_response_dto.dart';
import '../../../features/auth/data/models/request/login_request_dto.dart';
import '../../../features/auth/data/models/response/login_response_dto.dart';
import 'api_constants.dart';

part 'api_manager.g.dart';

@singleton
@injectable
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiManager {
  @factoryMethod
  factory ApiManager(Dio dio) = _ApiManager;

  @POST(ApiConstants.signInApi)
  Future<LoginResponseDto> login(@Body() LoginRequestDto request);

  @POST(ApiConstants.registerApi)
  Future<SignUpResponseDto> signUp(@Body() SignUpRequestDto request);
@GET(ApiConstants.getAllCategoriesApi)
  Future<CategoriesResponseModelEntity> getCategories();
@GET(ApiConstants.getBestSellerApi)
Future<BestSellerResponseModelEntity> getBestSellers();
@GET(ApiConstants.getOccasionsApi)
Future<OccasionsResponseModelEntity> getOccasions();

}
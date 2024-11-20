
 import 'package:flowery_e_commerce/core/networking/api/api_manager.dart';
import 'package:flowery_e_commerce/core/networking/api_execute.dart';
import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/occasions/data/mappers/occasions_mapper.dart';
import 'package:flowery_e_commerce/features/home/occasions/data/online_data_source/occasions_online_data_source.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: OccasionsOnlineDataSource)
class OccasionsApiManager implements OccasionsOnlineDataSource{
  ApiManager apiManager;
  OccasionsApiManager(this.apiManager);
  Future<DataResult<List<Occasions>>> getOccasions(){
    return executeApi(() async{
      var response = await apiManager.getOccasions();
      return OccasionsMapper.toOccasionsEntity(response);
    },);
  }

 }
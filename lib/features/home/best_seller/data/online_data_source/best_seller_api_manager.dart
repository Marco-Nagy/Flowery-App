

 import 'package:flowery_e_commerce/core/networking/api/api_manager.dart';
import 'package:flowery_e_commerce/core/networking/api_execute.dart';
import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/best_seller/data/mappers/best_seller_mapper.dart';
import 'package:flowery_e_commerce/features/home/best_seller/data/online_data_source/best_seller_online_data_source.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: BestSellerOnlineDataSource)
class BestSellerApiManager implements BestSellerOnlineDataSource{
  ApiManager apiManager;
  BestSellerApiManager(this.apiManager);
  @override
  Future<DataResult<List<BestSeller>>> getBestSellers() {
  return executeApi(() async{
    var response = await apiManager.getBestSellers();
    return BestSellerMappers.toBestSellerEntity(response);
  },);
  }

}
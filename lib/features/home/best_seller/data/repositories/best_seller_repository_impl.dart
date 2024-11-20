import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/best_seller/data/online_data_source/best_seller_online_data_source.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/best_seller_repository/best_seller_repo.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BestSellerRepository)
class BestSellerRepositoryImpl implements BestSellerRepository {
  BestSellerOnlineDataSource bestSellerOnlineDataSource;
  BestSellerRepositoryImpl(this.bestSellerOnlineDataSource);
  @override
  Future<DataResult<List<BestSeller>>> getBestSellers() {
    return bestSellerOnlineDataSource.getBestSellers();
  }
}

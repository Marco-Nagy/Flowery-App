

 import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';

abstract class BestSellerOnlineDataSource{

  Future<DataResult<List<BestSeller>>> getBestSellers();
 }
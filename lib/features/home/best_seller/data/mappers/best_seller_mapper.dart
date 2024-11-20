

 import 'package:flowery_e_commerce/features/home/best_seller/data/models/best_seller_response_model_entity.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';

class BestSellerMappers{
  static List<BestSeller> toBestSellerEntity(
      BestSellerResponseModelEntity bestSellerResponse){
    if(bestSellerResponse.bestSeller == null) return [];
    return bestSellerResponse.bestSeller!.map((e)=> BestSeller(imageCover: e!.imgCover!, slug: e.slug!, price: e.price!)).toList();
  }
 }
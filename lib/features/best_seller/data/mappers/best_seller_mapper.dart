

 import 'package:flowery_e_commerce/features/best_seller/data/models/best_seller_response_model_entity.dart';
import 'package:flowery_e_commerce/features/best_seller/domain/entities/most_selling_entity.dart';

class MostSellingMapper{
   static List<MostSellingProducts> toBestSellerEntity(
       BestSellerResponseModelEntity bestSellerResponse) {
     if (bestSellerResponse.bestSeller == null) return [];
     return bestSellerResponse.bestSeller!
         .map(
           (e) => MostSellingProducts( title: e!.title!, imageCover: e.imgCover!,price: e.price!,priceAfterDiscount: e.priceAfterDiscount!),
     )
         .toList();
   }
 }

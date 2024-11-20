
import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/best_seller_repository/best_seller_repo.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';
import 'package:injectable/injectable.dart';

@injectable
 class BestSellerUseCase{
  final BestSellerRepository bestSellerRepository;
  BestSellerUseCase(this.bestSellerRepository);

  Future<DataResult<List<BestSeller>>> call(){
    return bestSellerRepository.getBestSellers();
  }
}
import 'package:flowery_e_commerce/core/networking/error/error_model.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';


abstract class BestSellerState {}

class BestSellerInitialState extends BestSellerState {}

class GetBestSellerLoadingState extends BestSellerState {}

class GetBestSellerSuccessState extends BestSellerState {
  final List<BestSeller> bestSeller;

  GetBestSellerSuccessState(this.bestSeller);
}

class GetBestSellerErrorState extends BestSellerState {
  final ErrorModel errorModel;

  GetBestSellerErrorState(this.errorModel);
}

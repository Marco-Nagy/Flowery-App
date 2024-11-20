import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/core/networking/error/error_handler.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/entities/get_best_seller.dart';
import 'package:flowery_e_commerce/features/home/best_seller/domain/use_cases/best_seller_use_case.dart';
import 'package:flowery_e_commerce/features/home/best_seller/presentation/cubit/best_seller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.bestSellerUseCase) : super(BestSellerInitialState());
final BestSellerUseCase bestSellerUseCase;
   void getBestSellers() async{
     emit(GetBestSellerLoadingState());
     var response = await bestSellerUseCase();
     switch (response) {
       case Success<List<BestSeller>>():
         print("====================${response.data.map(
               (e) => e.slug,
         ).toList()}");
         emit(GetBestSellerSuccessState(response.data));
       case Fail():
         emit(GetBestSellerErrorState(ErrorHandler.handle(response.exception!)));
     }
   }
}

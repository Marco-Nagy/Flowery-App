import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/core/networking/error/error_handler.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/use_cases/get_categories_use_case.dart';
import 'package:flowery_e_commerce/features/home/catogeries/presentation/cubit/categories_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.getCategoriesUseCase) : super(CategoriesInitialState());
  final GetCategoriesUseCase getCategoriesUseCase;

  void getCategories() async {
    emit(GetCategoriesLoadingState());
    var response = await getCategoriesUseCase();
    switch (response) {
      case Success<List<Categories>>():
        print("====================${response.data.map(
              (e) => e.name,
            ).toList()}");
        emit(GetCategoriesSuccessState(response.data));
      case Fail():
        emit(GetCategoriesErrorState(ErrorHandler.handle(response.exception!)));
    }
  }
}

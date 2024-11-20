import 'package:flowery_e_commerce/core/networking/error/error_model.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';


abstract class CategoriesState {}

class CategoriesInitialState extends CategoriesState {}

class GetCategoriesLoadingState extends CategoriesState {}

class GetCategoriesSuccessState extends CategoriesState {
  final List<Categories> categories;

  GetCategoriesSuccessState(this.categories);
}

class GetCategoriesErrorState extends CategoriesState {
  final ErrorModel errorModel;

  GetCategoriesErrorState(this.errorModel);
}

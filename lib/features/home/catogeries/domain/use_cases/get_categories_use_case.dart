import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/repositories/get_categories_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  final GetCategoriesRepository getCategoriesRepository;
  GetCategoriesUseCase(this.getCategoriesRepository);
  Future<DataResult<List<Categories>>> call() {
    return getCategoriesRepository.getCategories();
  }
}

import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/catogeries/data/data_source/online_data_source/get_categories_online_data_source.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/repositories/get_categories_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetCategoriesRepository)
class GetCategoriesRepoImpl implements GetCategoriesRepository {
  final GetCategoriesOnlineDataSource getCategoriesOnlineDataSource;
  GetCategoriesRepoImpl(this.getCategoriesOnlineDataSource);

  @override
  Future<DataResult<List<Categories>>> getCategories() {
    return getCategoriesOnlineDataSource.getCategories();
  }
}

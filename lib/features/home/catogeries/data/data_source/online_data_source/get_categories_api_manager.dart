import 'package:flowery_e_commerce/core/networking/api/api_manager.dart';
import 'package:flowery_e_commerce/core/networking/api_execute.dart';
import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/catogeries/data/data_source/online_data_source/get_categories_online_data_source.dart';
import 'package:flowery_e_commerce/features/home/catogeries/data/mappers/categories_mapper.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetCategoriesOnlineDataSource)
class CategoriesApiManager implements GetCategoriesOnlineDataSource {
  ApiManager apiManager;
  CategoriesApiManager(this.apiManager);

  @override
  Future<DataResult<List<Categories>>> getCategories() {
    return executeApi(
      () async {
        var response = await apiManager.getCategories();
        return CategoriesMapper.toCategoriesEntity(response);
      },
    );
  }
}

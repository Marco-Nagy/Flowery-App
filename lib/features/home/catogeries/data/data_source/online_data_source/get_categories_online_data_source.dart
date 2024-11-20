import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';

abstract class GetCategoriesOnlineDataSource {
  Future<DataResult<List<Categories>>> getCategories();
}

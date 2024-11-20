
import 'package:flowery_e_commerce/features/home/catogeries/data/models/categories_response_model_entity.dart';
import 'package:flowery_e_commerce/features/home/catogeries/domain/entities/get_categories.dart';

class CategoriesMapper {
  static List<Categories> toCategoriesEntity(
      CategoriesResponseModelEntity categoriesResponse) {
    if (categoriesResponse.categories == null) return [];
    return categoriesResponse.categories!
        .map(
          (e) => Categories(id: e!.id!, name: e.name!, image: e.image!),
        )
        .toList();
  }
}

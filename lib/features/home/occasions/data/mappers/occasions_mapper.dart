import 'package:flowery_e_commerce/features/home/occasions/data/models/occasions_response_model_entity.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';

class OccasionsMapper {
  static List<Occasions> toOccasionsEntity(
      OccasionsResponseModelEntity occasionsResponse) {
    if (occasionsResponse.occasions == null) return [];
    return occasionsResponse.occasions!
        .map(
          (e) => Occasions(name: e!.name!, image: e.image!),
        )
        .toList();
  }
}

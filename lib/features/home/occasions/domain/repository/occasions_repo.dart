import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';

abstract class OccasionsRepository {
  Future<DataResult<List<Occasions>>> getOccasions();
}

import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/repository/occasions_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class OccasionsUseCase {
  OccasionsRepository occasionsRepository;
  OccasionsUseCase(this.occasionsRepository);
  Future<DataResult<List<Occasions>>> call() {
    return occasionsRepository.getOccasions();
  }
}

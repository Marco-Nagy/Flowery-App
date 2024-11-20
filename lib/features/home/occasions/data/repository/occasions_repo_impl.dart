

import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/home/occasions/data/online_data_source/occasions_online_data_source.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/entities/get_occasions.dart';
import 'package:flowery_e_commerce/features/home/occasions/domain/repository/occasions_repo.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: OccasionsRepository)
class OccasionsRepoImpl implements OccasionsRepository{
 OccasionsOnlineDataSource occasionsOnlineDataSource;
 OccasionsRepoImpl(this.occasionsOnlineDataSource);
  @override
  Future<DataResult<List<Occasions>>> getOccasions() {
   return occasionsOnlineDataSource.getOccasions();
  }

}
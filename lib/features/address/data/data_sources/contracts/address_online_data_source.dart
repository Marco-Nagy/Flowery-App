import 'package:flowery_e_commerce/core/networking/common/api_result.dart';
import 'package:flowery_e_commerce/features/address/domain/entities/response/SavedAddressResponseEntity.dart';

abstract class AddressOnlineDataSource {
  Future<DataResult<List<AddressesEntity>>> getSavedAddresses();
}

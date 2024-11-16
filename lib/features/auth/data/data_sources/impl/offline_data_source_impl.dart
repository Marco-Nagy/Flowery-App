import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/Services/shared_preference/shared_pref_keys.dart';
import '../contracts/offline_data_source.dart';

@Injectable(as: OfflineDataSource)
class OfflineDataSourceImplementation implements OfflineDataSource {
  final SharedPreferences sharedPreferences;

  @factoryMethod
  OfflineDataSourceImplementation(this.sharedPreferences);

  @override
  Future<void> cacheToken(String token) async {
    await sharedPreferences.setString(SharedPrefKeys.tokenKey, token);
  }

  @override
  Future<String?> getToken() async {
    return await sharedPreferences.getString(SharedPrefKeys.tokenKey) ??
        "not provided";
  }
}
import 'dart:async';

import 'common/api_result.dart';


Future<ApiResult<T>> executeApi<T>(Future<T> Function() apiCall) async {
  try {
    var result = await apiCall.call();
    return Success(data: result);
  } on Exception catch (e) {
    return Fail(exception: e);
  }
}

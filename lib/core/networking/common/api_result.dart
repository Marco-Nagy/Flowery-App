sealed class ApiResult<T> {}

class Success<T> implements ApiResult<T> {
  final T? data;

  Success({this.data});
  }



class Fail<T> implements ApiResult<T> {
  final Exception? exception;

  Fail({this.exception});
}

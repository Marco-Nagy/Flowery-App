sealed class ApiResult<T> {}

class Success<T> implements ApiResult<T> {
  T data;

  Success(this.data);
}

class Fail<T> implements ApiResult<T> {
  Exception? exception;

  Fail(this.exception);
}

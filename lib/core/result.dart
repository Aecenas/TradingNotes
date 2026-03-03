import 'app_error.dart';

class Result<T> {
  const Result._({this.data, this.error});

  final T? data;
  final AppError? error;

  bool get isSuccess => error == null;
  bool get isFailure => !isSuccess;

  static Result<T> success<T>([T? data]) => Result<T>._(data: data);

  static Result<T> failure<T>(AppError error) => Result<T>._(error: error);

  T requireData() {
    if (data == null) {
      throw StateError('Result does not contain data. error: $error');
    }
    return data as T;
  }
}

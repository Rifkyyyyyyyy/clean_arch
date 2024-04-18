import 'package:dio/dio.dart';

// Di sini, kita melihat pembuatan kelas generik untuk mengelola status data dalam Flutter, 
// yang berfungsi sebagai abstraksi untuk mengelola data yang diperoleh dari layanan Retrofit.

// buat abstract class generic <T>
abstract class DataState<T> {
  final T? value;
  final DioException? exception;

  DataState({this.value, this.exception});
}

// Untuk menghandle data jika data itu success
class DataSuccess<T> extends DataState<T> {
  DataSuccess(T value) : super(value: value);
}

// Untuk menghandle data jika data itu failed
class DataFailed<T> extends DataState<T> {
  DataFailed(DioException exception) : super(exception: exception);
}

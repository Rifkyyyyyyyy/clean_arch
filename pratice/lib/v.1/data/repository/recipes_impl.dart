import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/data/data_sources/remote.dart';
import 'package:pratice/v.1/data/model/product_model.dart';
import 'package:pratice/v.1/domain/repository/recipes_repo.dart';

// lalu disini kita implementasikan abstract class dari folder remote
// folder disini berfungsi untuk menghandle permintaan data yang bersumber
// dari metode get yang kita buat mengunakan retrofit sebelumnya

class PostRepositoryImpl implements PostRepository {
  final BelajarRetrofitService _belajarRetrofitService; // panggil class retrofit 

  PostRepositoryImpl(this._belajarRetrofitService);

  @override
  Future<DataState<List<ProductModel>>> getData() async {
    try {
      final data = await _belajarRetrofitService.getData(); // mengambil data melalui server
      print('Raw Data: ${data.data}'); // jika data berhasil , maka kita akan mendapatkan raw data nya.
      if (data.response.statusCode == HttpStatus.ok) {
        return DataSuccess(data.data); 
      } else {
        return DataFailed(DioException(
            requestOptions: data.response.requestOptions,
            error: data.response.statusCode,
            message: data.response.statusMessage));
      }
    } on DioException catch (e, stackTrace) {
      print('stackTrace : $stackTrace');
      print('error : $e');
      throw DataFailed(e);
    }
  }
}

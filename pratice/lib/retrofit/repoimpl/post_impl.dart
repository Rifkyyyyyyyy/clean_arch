import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pratice/retrofit/core/remote.dart';
import 'package:pratice/retrofit/model/post_model.dart';
import 'package:pratice/retrofit/repository/post_repository.dart';
import 'package:pratice/retrofit/resource/state_data.dart';

// lalu disini kita implementasikan abstract class dari folder repository

// Import package yang diperlukan

class PostRepositoryImpl implements PostRepository {
  final BelajarRetrofitService _belajarRetrofitService;

  PostRepositoryImpl(this._belajarRetrofitService);

  @override
  Future<DataState<List<PostModel>>> getData() async {
    try {
      final data = await _belajarRetrofitService.getData();
      if (data.response.statusCode == HttpStatus.ok) {
        // Mengembalikan objek DataSuccess jika permintaan sukses
        return DataSuccess(data.data);
      } else {
        return DataFailed(DioException(
            requestOptions: data.response.requestOptions,
            error: data.response.statusCode,
            message: data.response.statusMessage));
      }
    } on DioException catch (e) {
      // Tangani kesalahan dan kembalikan objek DataFailed
      throw DataFailed(e);
    }
  }
}

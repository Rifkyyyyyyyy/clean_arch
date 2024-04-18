import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/data/data_sources/remote.dart';
import 'package:pratice/v.1/data/model/post_model.dart';
import 'package:pratice/v.1/domain/repository/post_repository.dart';

// lalu disini kita implementasikan abstract class dari folder repository

// Import package yang diperlukan

class PostRepositoryImpl implements PostRepository {
  final BelajarRetrofitService _belajarRetrofitService;

  PostRepositoryImpl(this._belajarRetrofitService);

  @override
  Future<DataState<List<RecipeModel>>> getData() async {
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
    } on DioException catch (e, stackTrace) {
      // Tangani kesalahan dan kembalikan objek DataFailed
      print('stackTrace : $stackTrace');
      print('error : $e');
      throw DataFailed(e);
    }
  }
}

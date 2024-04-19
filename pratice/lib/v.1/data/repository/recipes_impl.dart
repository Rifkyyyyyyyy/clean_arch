import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/data/data_sources/remote.dart';
import 'package:pratice/v.1/data/model/product_model.dart';
import 'package:pratice/v.1/domain/repository/recipes_repo.dart';

// lalu disini kita implementasikan abstract class dari folder repository

// Import package yang diperlukan

class PostRepositoryImpl implements PostRepository {
  final BelajarRetrofitService _belajarRetrofitService;

  PostRepositoryImpl(this._belajarRetrofitService);

  @override
  Future<DataState<List<ProductModel>>> getData() async {
    try {
      final data = await _belajarRetrofitService.getData();
      print('Raw Data: ${data.data}');
      if (data.response.statusCode == HttpStatus.ok) {
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

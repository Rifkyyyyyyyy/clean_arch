


// Deklarasi abstract class yang bertanggung jawab untuk mengelola interaksi dengan API
import 'package:pratice/v.1/domain/entities/product_entities.dart';

import '../../core/resource/state_data.dart';
import '../../data/model/product_model.dart';

abstract class PostRepository {
  Future<DataState<List<ProductEntity>>> getData();
}

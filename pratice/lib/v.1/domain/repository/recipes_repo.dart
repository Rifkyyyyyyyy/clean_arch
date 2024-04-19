import 'package:pratice/v.1/domain/entities/product_entities.dart';

import '../../core/resource/state_data.dart';

// Deklarasi abstract class yang bertanggung jawab untuk mengelola interaksi dengan API
abstract class PostRepository {
  Future<DataState<List<ProductEntity>>> getData();
  // Kalian bebas untuk membuat logika yang berbeda , karna disini saya hanya ingin mendapatkan semua data nya maka saya hanya membuat 1 logika , yaitu getData.
}




// Deklarasi abstract class yang bertanggung jawab untuk mengelola interaksi dengan API
import '../../core/resource/state_data.dart';
import '../../data/model/post_model.dart';

abstract class PostRepository {
  Future<DataState<List<RecipeModel>>> getData();
}

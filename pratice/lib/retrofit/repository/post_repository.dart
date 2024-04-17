import 'package:pratice/retrofit/model/post_model.dart';
import 'package:pratice/retrofit/resource/state_data.dart';


// Deklarasi abstract class yang bertanggung jawab untuk mengelola interaksi dengan API
abstract class PostRepository {
  Future<DataState<List<PostModel>>> getData();
}

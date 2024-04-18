import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/core/usecase/usecase.dart';
import 'package:pratice/v.1/data/model/post_model.dart';
import 'package:pratice/v.1/domain/repository/post_repository.dart';

// lalu disini anda perlu mengimplementasikan abstract class dari post repository ,
// yang telah kita buat sebelumnya.

class UseCaseImpl implements Usecase<DataState<List<RecipeModel>>, void> {
  final PostRepository _postRepository;
  UseCaseImpl(this._postRepository);
  @override
  Future<DataState<List<RecipeModel>>> call({void params}) {
    return _postRepository.getData();
  }
}

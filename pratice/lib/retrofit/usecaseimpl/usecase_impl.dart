import 'package:pratice/retrofit/repository/post_repository.dart';
import 'package:pratice/retrofit/resource/state_data.dart';
import 'package:pratice/retrofit/usecase/usecase.dart';

import '../model/post_model.dart';

class UseCaseImpl implements Usecase<DataState<List<PostModel>>, void> {
  final PostRepository _postRepository;
  UseCaseImpl(this._postRepository);
  @override
  Future<DataState<List<PostModel>>> call({void params}) {
    return _postRepository.getData();
  }
}

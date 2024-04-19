import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/core/usecase/usecase.dart';
import 'package:pratice/v.1/data/model/product_model.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';
import 'package:pratice/v.1/domain/repository/recipes_repo.dart';

// lalu disini anda perlu mengimplementasikan abstract class dari post repository ,
// yang telah kita buat sebelumnya.

class UseCaseImpl implements Usecase<DataState<List<ProductEntity>>, void> {
  final PostRepository _postRepository;
  UseCaseImpl(this._postRepository);
  @override
  Future<DataState<List<ProductEntity>>> call({void params}) {
    return _postRepository.getData();
  }
}

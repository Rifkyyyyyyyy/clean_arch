import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratice/retrofit/usecaseimpl/usecase_impl.dart';
import 'export.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final UseCaseImpl _useCaseImpl;

  PostBloc(this._useCaseImpl) : super(PostInitial()) {
    on<PostEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  void getData(PostStartedEvent event, Emitter<PostState> emitter) async {
   
  }
}

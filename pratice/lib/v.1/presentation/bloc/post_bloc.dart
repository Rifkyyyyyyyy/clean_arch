import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/domain/usecase/usecase_impl.dart';

import 'export.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  final UseCaseImpl _useCaseImpl;

  RecipesBloc(this._useCaseImpl) : super(RecipesInitial()) {
    on<RecipesStartedEvent>(_getData);
  }

  void _getData(
      RecipesStartedEvent event, Emitter<RecipesState> emitter) async {
    final data = await _useCaseImpl();
    if (data is DataSuccess && data.value!.isNotEmpty) {
      emitter(RecipesLoaded(data.value!));
    }
    else if (data is DataFailed) {
      emitter(RecipesError(data.exception!));
    }
  }
}

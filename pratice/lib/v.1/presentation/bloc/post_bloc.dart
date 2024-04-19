import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratice/v.1/core/resource/state_data.dart';
import 'package:pratice/v.1/domain/usecase/usecase_impl.dart';

import 'export.dart';

class ProductBloc extends Bloc<ProductsEvent, ProductState> {
  final UseCaseImpl _useCaseImpl;

  ProductBloc(this._useCaseImpl) : super(ProductInitial()) {
    on<ProductsStartedEvent>(_getData);
  }

  void _getData(
      ProductsStartedEvent event, Emitter<ProductState> emitter) async {
    emitter(ProductLoading());
    final data = await _useCaseImpl();

    if (data is DataSuccess && data.value!.isNotEmpty) {
      emitter(ProductLoaded(data.value!));
    } else if (data is DataFailed) {
      emitter(ProductError(data.exception!));
    }
  }
}

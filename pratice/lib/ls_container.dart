import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:pratice/v.1/domain/repository/recipes_repo.dart';
import 'v.1/data/data_sources/remote.dart';
import 'v.1/data/repository/recipes_impl.dart';
import 'v.1/domain/usecase/usecase_impl.dart';
import 'v.1/presentation/bloc/post_bloc.dart';

final ls = GetIt.instance;

Future<void> init() async {
  // dio package
  ls.registerSingleton<Dio>(Dio());

  // api depencies

  ls.registerSingleton<BelajarRetrofitService>(BelajarRetrofitService(ls()));

  // repo

  ls.registerSingleton<PostRepository>(PostRepositoryImpl(ls()));


  // useCase

  ls.registerSingleton<UseCaseImpl>(UseCaseImpl(ls()));

  // bloc

  ls.registerFactory<ProductBloc>(() => ProductBloc(ls()));
}


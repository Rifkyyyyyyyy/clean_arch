import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:pratice/v.1/data/model/post_model.dart';



abstract class RecipesState extends Equatable {
  final List<RecipeModel>? model;
  final DioException? exception;

  const RecipesState({this.model, this.exception});

  @override
  List<Object> get props => [model!, exception!];
}

class RecipesInitial extends RecipesState {}

class RecipesLoading extends RecipesState {}

class RecipesLoaded extends RecipesState {
  const RecipesLoaded(final List<RecipeModel> model) : super(model: model);
}

class RecipesError extends RecipesState {
  const RecipesError(DioException exception) : super(exception: exception);
}

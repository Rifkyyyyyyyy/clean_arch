import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:pratice/retrofit/model/post_model.dart';

abstract class PostState extends Equatable {
  final List<PostModel>? model;
  final DioException? exception;

  const PostState({this.model, this.exception});

  @override
  List<Object> get props => [model!, exception!];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  const PostLoaded(final List<PostModel> model) : super(model: model);
}

class PostError extends PostState {
  const PostError(DioException exception) : super(exception: exception);
}

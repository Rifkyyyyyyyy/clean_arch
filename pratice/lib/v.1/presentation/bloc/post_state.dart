import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:pratice/v.1/domain/entities/product_entities.dart';

abstract class ProductState extends Equatable {
  final List<ProductEntity>? model;
  final DioException? exception;

  const ProductState({this.model, this.exception});

  @override
  List<Object?> get props => [model, exception]; 
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  const ProductLoaded( List<ProductEntity> model) : super(model: model);
}

class ProductError extends ProductState {
  const ProductError(DioException exception) : super(exception: exception);
}

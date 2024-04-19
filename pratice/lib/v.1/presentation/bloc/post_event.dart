import 'package:equatable/equatable.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();
  
  @override
  List<Object> get props => [];
}


class ProductsStartedEvent extends ProductsEvent {}


class SearchProductsEvent extends ProductsEvent {}
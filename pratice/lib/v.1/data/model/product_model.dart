// ignore_for_file: must_be_immutable

import 'package:pratice/v.1/domain/entities/product_entities.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    RatingModel? rating,
  }) : super(
          id: id,
          title: title,
          price: price,
          description: description,
          category: category,
          image: image,
          rating: rating,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] != null
          ? RatingModel.fromJson(json['rating'] as Map<String, dynamic>)
          : null,
    );
  }
}

class RatingModel extends RatingEntity {
  RatingModel({
    double? rate,
    int? count,
  }) : super(
          rate: rate,
          count: count,
        );

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );
  }
}


// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
 int? id;
 String? title;
 double? price;
 String? description;
 String? category;
 String? image;
 RatingEntity? rating;

  ProductEntity({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        price,
        description,
        category,
        image,
        rating,
      ];
}

class RatingEntity extends Equatable {
 double? rate;
 int? count;

  RatingEntity({
    this.rate,
    this.count,
  });

  @override
  List<Object?> get props => [
        rate,
        count,
      ];
}


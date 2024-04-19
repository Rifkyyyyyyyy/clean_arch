// ignore_for_file: must_be_immutable

import 'package:pratice/v.1/domain/entities/product_entities.dart';

// Ini adalah deklarasi class ProductModel, yang merupakan turunan dari ProductEntity.
// Class ini dibuat sebagai immutable (tidak dapat diubah), yang berarti setelah objeknya dibuat, nilainya tidak dapat diubah.

// Dalam arsitektur MVVM (Model-View-ViewModel), class-class model seperti ProductModel dan RatingModel berfungsi sebagai bagian dari layer model. 
// Layer model bertanggung jawab untuk merepresentasikan data dalam aplikasi dan melakukan operasi-operasi yang terkait dengan data tersebut,
// seperti pengolahan, validasi, dan transformasi. 


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

  // Factory method untuk membuat objek ProductModel dari data JSON.
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

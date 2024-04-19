// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';


// lalu disini saya membuat class entity.
// apa itu class entity ? class entitiy adalah sebuah konsep class dalam pemrograman yang bertanggung jawab untuk 
// merepresentasikan objek-objek dalam domain bisnis atau aplikasi. Mereka biasanya memiliki atribut-atribut yang mewakili data yang terkait dengan objek tersebut, 
// serta mungkin beberapa metode atau logika yang terkait dengan objek tersebut.

// Disini juga class entity sering digunakan dalam pengembangan perangkat lunak untuk 
// memodelkan entitas-entitas yang ada dalam domain bisnis atau aplikasi, seperti produk, pengguna,
// pesanan, dan sebagainya. Mereka berfungsi sebagai representasi struktural dari objek-objek nyata dalam sistem,
// dan biasanya mencerminkan cara data tersebut disimpan, diambil, dan digunakan dalam aplikasi.

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


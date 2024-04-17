// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

// Anotasi 'part' digunakan untuk menunjukkan kepada Dart bahwa kita akan menghasilkan file menggunakan generator kode dari package Freezed.

part 'post_model.freezed.dart'; // Sesuaikan nama file Anda dan tambahkan ekstensi .freezed.dart
part 'post_model.g.dart'; // Digunakan untuk menghasilkan kode serialisasi/deserialisasi json

@freezed // tambahkan anotasi @frezeed
class PostModel with _$PostModel {
  const factory PostModel(
      {@Default(0) int userId,
      @Default(0) int id,
      @Default('') String title,
      @Default('') String body}) = _PostModel;

  // karna disini kita punya respon berbentuk json , maka kita perlu method from json untuk call dari api

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

// setelah selesai , jangan lupa run command flutter pub build_runner build . di cli

// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

// Anotasi 'part' digunakan untuk menunjukkan kepada Dart bahwa kita akan menghasilkan file menggunakan generator kode dari package Freezed.

part 'post_model.freezed.dart'; // Sesuaikan nama file Anda dan tambahkan ekstensi .freezed.dart
part 'post_model.g.dart'; // Digunakan untuk menghasilkan kode serialisasi/deserialisasi json

@freezed // tambahkan anotasi @frezeed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    @JsonKey(required: true, name: 'id') @Default(0) int id,
    @JsonKey(required: true, name: 'name') @Default('') String name,
    @JsonKey(required: true, name: 'ingredients')
    @Default([])
    List<String> ingredients,
    @JsonKey(required: true, name: 'instructions')
    @Default([])
    List<String> instructions,
    @JsonKey(required: true, name: 'prepTimeMinutes')
    @Default(0)
    int prepTimeMinutes,
    @JsonKey(required: true, name: 'cookTimeMinutes')
    @Default(0)
    int cookTimeMinutes,
    @JsonKey(required: true, name: 'servings') @Default(0) int servings,
    @JsonKey(required: true, name: 'difficulty') @Default('') String difficulty,
    @JsonKey(required: true, name: 'cuisine') @Default('') String cuisine,
    @JsonKey(required: true, name: 'caloriesPerServing')
    @Default(0)
    int caloriesPerServing,
    @JsonKey(required: true, name: 'tags') @Default([]) List<String> tags,
    @JsonKey(required: true, name: 'userId') @Default(0) int userId,
    @JsonKey(required: true, name: 'image') @Default('') String image,
    @JsonKey(required: true, name: 'rating') @Default(0.0) double rating,
    @JsonKey(required: true, name: 'reviewCount') @Default(0) int reviewCount,
    @JsonKey(required: true, name: 'mealType')
    @Default([])
    List<String> mealType,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
// setelah selesai , jangan lupa run command flutter pub build_runner build . di cli

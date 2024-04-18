// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'ingredients',
      'instructions',
      'prepTimeMinutes',
      'cookTimeMinutes',
      'servings',
      'difficulty',
      'cuisine',
      'caloriesPerServing',
      'tags',
      'userId',
      'image',
      'rating',
      'reviewCount',
      'mealType'
    ],
  );
  return _$RecipeModelImpl(
    id: json['id'] as int? ?? 0,
    name: json['name'] as String? ?? '',
    ingredients: (json['ingredients'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const [],
    instructions: (json['instructions'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const [],
    prepTimeMinutes: json['prepTimeMinutes'] as int? ?? 0,
    cookTimeMinutes: json['cookTimeMinutes'] as int? ?? 0,
    servings: json['servings'] as int? ?? 0,
    difficulty: json['difficulty'] as String? ?? '',
    cuisine: json['cuisine'] as String? ?? '',
    caloriesPerServing: json['caloriesPerServing'] as int? ?? 0,
    tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
        const [],
    userId: json['userId'] as int? ?? 0,
    image: json['image'] as String? ?? '',
    rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    reviewCount: json['reviewCount'] as int? ?? 0,
    mealType: (json['mealType'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const [],
  );
}

Map<String, dynamic> _$$RecipeModelImplToJson(_$RecipeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
      'prepTimeMinutes': instance.prepTimeMinutes,
      'cookTimeMinutes': instance.cookTimeMinutes,
      'servings': instance.servings,
      'difficulty': instance.difficulty,
      'cuisine': instance.cuisine,
      'caloriesPerServing': instance.caloriesPerServing,
      'tags': instance.tags,
      'userId': instance.userId,
      'image': instance.image,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'mealType': instance.mealType,
    };

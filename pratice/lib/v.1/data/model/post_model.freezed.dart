// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  @JsonKey(required: true, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'ingredients')
  List<String> get ingredients => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'instructions')
  List<String> get instructions => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'prepTimeMinutes')
  int get prepTimeMinutes => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'cookTimeMinutes')
  int get cookTimeMinutes => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'servings')
  int get servings => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'difficulty')
  String get difficulty => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'cuisine')
  String get cuisine => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'caloriesPerServing')
  int get caloriesPerServing => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'tags')
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'rating')
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'reviewCount')
  int get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(required: true, name: 'mealType')
  List<String> get mealType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {@JsonKey(required: true, name: 'id') int id,
      @JsonKey(required: true, name: 'name') String name,
      @JsonKey(required: true, name: 'ingredients') List<String> ingredients,
      @JsonKey(required: true, name: 'instructions') List<String> instructions,
      @JsonKey(required: true, name: 'prepTimeMinutes') int prepTimeMinutes,
      @JsonKey(required: true, name: 'cookTimeMinutes') int cookTimeMinutes,
      @JsonKey(required: true, name: 'servings') int servings,
      @JsonKey(required: true, name: 'difficulty') String difficulty,
      @JsonKey(required: true, name: 'cuisine') String cuisine,
      @JsonKey(required: true, name: 'caloriesPerServing')
      int caloriesPerServing,
      @JsonKey(required: true, name: 'tags') List<String> tags,
      @JsonKey(required: true, name: 'userId') int userId,
      @JsonKey(required: true, name: 'image') String image,
      @JsonKey(required: true, name: 'rating') double rating,
      @JsonKey(required: true, name: 'reviewCount') int reviewCount,
      @JsonKey(required: true, name: 'mealType') List<String> mealType});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredients = null,
    Object? instructions = null,
    Object? prepTimeMinutes = null,
    Object? cookTimeMinutes = null,
    Object? servings = null,
    Object? difficulty = null,
    Object? cuisine = null,
    Object? caloriesPerServing = null,
    Object? tags = null,
    Object? userId = null,
    Object? image = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mealType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prepTimeMinutes: null == prepTimeMinutes
          ? _value.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      cookTimeMinutes: null == cookTimeMinutes
          ? _value.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: null == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeModelImplCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$RecipeModelImplCopyWith(
          _$RecipeModelImpl value, $Res Function(_$RecipeModelImpl) then) =
      __$$RecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, name: 'id') int id,
      @JsonKey(required: true, name: 'name') String name,
      @JsonKey(required: true, name: 'ingredients') List<String> ingredients,
      @JsonKey(required: true, name: 'instructions') List<String> instructions,
      @JsonKey(required: true, name: 'prepTimeMinutes') int prepTimeMinutes,
      @JsonKey(required: true, name: 'cookTimeMinutes') int cookTimeMinutes,
      @JsonKey(required: true, name: 'servings') int servings,
      @JsonKey(required: true, name: 'difficulty') String difficulty,
      @JsonKey(required: true, name: 'cuisine') String cuisine,
      @JsonKey(required: true, name: 'caloriesPerServing')
      int caloriesPerServing,
      @JsonKey(required: true, name: 'tags') List<String> tags,
      @JsonKey(required: true, name: 'userId') int userId,
      @JsonKey(required: true, name: 'image') String image,
      @JsonKey(required: true, name: 'rating') double rating,
      @JsonKey(required: true, name: 'reviewCount') int reviewCount,
      @JsonKey(required: true, name: 'mealType') List<String> mealType});
}

/// @nodoc
class __$$RecipeModelImplCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$RecipeModelImpl>
    implements _$$RecipeModelImplCopyWith<$Res> {
  __$$RecipeModelImplCopyWithImpl(
      _$RecipeModelImpl _value, $Res Function(_$RecipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredients = null,
    Object? instructions = null,
    Object? prepTimeMinutes = null,
    Object? cookTimeMinutes = null,
    Object? servings = null,
    Object? difficulty = null,
    Object? cuisine = null,
    Object? caloriesPerServing = null,
    Object? tags = null,
    Object? userId = null,
    Object? image = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mealType = null,
  }) {
    return _then(_$RecipeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prepTimeMinutes: null == prepTimeMinutes
          ? _value.prepTimeMinutes
          : prepTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      cookTimeMinutes: null == cookTimeMinutes
          ? _value.cookTimeMinutes
          : cookTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: null == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      mealType: null == mealType
          ? _value._mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeModelImpl implements _RecipeModel {
  const _$RecipeModelImpl(
      {@JsonKey(required: true, name: 'id') this.id = 0,
      @JsonKey(required: true, name: 'name') this.name = '',
      @JsonKey(required: true, name: 'ingredients')
      final List<String> ingredients = const [],
      @JsonKey(required: true, name: 'instructions')
      final List<String> instructions = const [],
      @JsonKey(required: true, name: 'prepTimeMinutes')
      this.prepTimeMinutes = 0,
      @JsonKey(required: true, name: 'cookTimeMinutes')
      this.cookTimeMinutes = 0,
      @JsonKey(required: true, name: 'servings') this.servings = 0,
      @JsonKey(required: true, name: 'difficulty') this.difficulty = '',
      @JsonKey(required: true, name: 'cuisine') this.cuisine = '',
      @JsonKey(required: true, name: 'caloriesPerServing')
      this.caloriesPerServing = 0,
      @JsonKey(required: true, name: 'tags') final List<String> tags = const [],
      @JsonKey(required: true, name: 'userId') this.userId = 0,
      @JsonKey(required: true, name: 'image') this.image = '',
      @JsonKey(required: true, name: 'rating') this.rating = 0.0,
      @JsonKey(required: true, name: 'reviewCount') this.reviewCount = 0,
      @JsonKey(required: true, name: 'mealType')
      final List<String> mealType = const []})
      : _ingredients = ingredients,
        _instructions = instructions,
        _tags = tags,
        _mealType = mealType;

  factory _$RecipeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeModelImplFromJson(json);

  @override
  @JsonKey(required: true, name: 'id')
  final int id;
  @override
  @JsonKey(required: true, name: 'name')
  final String name;
  final List<String> _ingredients;
  @override
  @JsonKey(required: true, name: 'ingredients')
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _instructions;
  @override
  @JsonKey(required: true, name: 'instructions')
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  @JsonKey(required: true, name: 'prepTimeMinutes')
  final int prepTimeMinutes;
  @override
  @JsonKey(required: true, name: 'cookTimeMinutes')
  final int cookTimeMinutes;
  @override
  @JsonKey(required: true, name: 'servings')
  final int servings;
  @override
  @JsonKey(required: true, name: 'difficulty')
  final String difficulty;
  @override
  @JsonKey(required: true, name: 'cuisine')
  final String cuisine;
  @override
  @JsonKey(required: true, name: 'caloriesPerServing')
  final int caloriesPerServing;
  final List<String> _tags;
  @override
  @JsonKey(required: true, name: 'tags')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(required: true, name: 'userId')
  final int userId;
  @override
  @JsonKey(required: true, name: 'image')
  final String image;
  @override
  @JsonKey(required: true, name: 'rating')
  final double rating;
  @override
  @JsonKey(required: true, name: 'reviewCount')
  final int reviewCount;
  final List<String> _mealType;
  @override
  @JsonKey(required: true, name: 'mealType')
  List<String> get mealType {
    if (_mealType is EqualUnmodifiableListView) return _mealType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealType);
  }

  @override
  String toString() {
    return 'RecipeModel(id: $id, name: $name, ingredients: $ingredients, instructions: $instructions, prepTimeMinutes: $prepTimeMinutes, cookTimeMinutes: $cookTimeMinutes, servings: $servings, difficulty: $difficulty, cuisine: $cuisine, caloriesPerServing: $caloriesPerServing, tags: $tags, userId: $userId, image: $image, rating: $rating, reviewCount: $reviewCount, mealType: $mealType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.prepTimeMinutes, prepTimeMinutes) ||
                other.prepTimeMinutes == prepTimeMinutes) &&
            (identical(other.cookTimeMinutes, cookTimeMinutes) ||
                other.cookTimeMinutes == cookTimeMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.caloriesPerServing, caloriesPerServing) ||
                other.caloriesPerServing == caloriesPerServing) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality().equals(other._mealType, _mealType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions),
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      difficulty,
      cuisine,
      caloriesPerServing,
      const DeepCollectionEquality().hash(_tags),
      userId,
      image,
      rating,
      reviewCount,
      const DeepCollectionEquality().hash(_mealType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      __$$RecipeModelImplCopyWithImpl<_$RecipeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeModelImplToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  const factory _RecipeModel(
      {@JsonKey(required: true, name: 'id') final int id,
      @JsonKey(required: true, name: 'name') final String name,
      @JsonKey(required: true, name: 'ingredients')
      final List<String> ingredients,
      @JsonKey(required: true, name: 'instructions')
      final List<String> instructions,
      @JsonKey(required: true, name: 'prepTimeMinutes')
      final int prepTimeMinutes,
      @JsonKey(required: true, name: 'cookTimeMinutes')
      final int cookTimeMinutes,
      @JsonKey(required: true, name: 'servings') final int servings,
      @JsonKey(required: true, name: 'difficulty') final String difficulty,
      @JsonKey(required: true, name: 'cuisine') final String cuisine,
      @JsonKey(required: true, name: 'caloriesPerServing')
      final int caloriesPerServing,
      @JsonKey(required: true, name: 'tags') final List<String> tags,
      @JsonKey(required: true, name: 'userId') final int userId,
      @JsonKey(required: true, name: 'image') final String image,
      @JsonKey(required: true, name: 'rating') final double rating,
      @JsonKey(required: true, name: 'reviewCount') final int reviewCount,
      @JsonKey(required: true, name: 'mealType')
      final List<String> mealType}) = _$RecipeModelImpl;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$RecipeModelImpl.fromJson;

  @override
  @JsonKey(required: true, name: 'id')
  int get id;
  @override
  @JsonKey(required: true, name: 'name')
  String get name;
  @override
  @JsonKey(required: true, name: 'ingredients')
  List<String> get ingredients;
  @override
  @JsonKey(required: true, name: 'instructions')
  List<String> get instructions;
  @override
  @JsonKey(required: true, name: 'prepTimeMinutes')
  int get prepTimeMinutes;
  @override
  @JsonKey(required: true, name: 'cookTimeMinutes')
  int get cookTimeMinutes;
  @override
  @JsonKey(required: true, name: 'servings')
  int get servings;
  @override
  @JsonKey(required: true, name: 'difficulty')
  String get difficulty;
  @override
  @JsonKey(required: true, name: 'cuisine')
  String get cuisine;
  @override
  @JsonKey(required: true, name: 'caloriesPerServing')
  int get caloriesPerServing;
  @override
  @JsonKey(required: true, name: 'tags')
  List<String> get tags;
  @override
  @JsonKey(required: true, name: 'userId')
  int get userId;
  @override
  @JsonKey(required: true, name: 'image')
  String get image;
  @override
  @JsonKey(required: true, name: 'rating')
  double get rating;
  @override
  @JsonKey(required: true, name: 'reviewCount')
  int get reviewCount;
  @override
  @JsonKey(required: true, name: 'mealType')
  List<String> get mealType;
  @override
  @JsonKey(ignore: true)
  _$$RecipeModelImplCopyWith<_$RecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

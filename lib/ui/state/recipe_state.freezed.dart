// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeState {

 int get id; String get name; String get description; List<FruitState> get fruits; int get calories; double get fat; double get carbohydrates; double get sugar; double get protein;
/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeStateCopyWith<RecipeState> get copyWith => _$RecipeStateCopyWithImpl<RecipeState>(this as RecipeState, _$identity);

  /// Serializes this RecipeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.fruits, fruits)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(fruits),calories,fat,carbohydrates,sugar,protein);

@override
String toString() {
  return 'RecipeState(id: $id, name: $name, description: $description, fruits: $fruits, calories: $calories, fat: $fat, carbohydrates: $carbohydrates, sugar: $sugar, protein: $protein)';
}


}

/// @nodoc
abstract mixin class $RecipeStateCopyWith<$Res>  {
  factory $RecipeStateCopyWith(RecipeState value, $Res Function(RecipeState) _then) = _$RecipeStateCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, List<FruitState> fruits, int calories, double fat, double carbohydrates, double sugar, double protein
});




}
/// @nodoc
class _$RecipeStateCopyWithImpl<$Res>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._self, this._then);

  final RecipeState _self;
  final $Res Function(RecipeState) _then;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? fruits = null,Object? calories = null,Object? fat = null,Object? carbohydrates = null,Object? sugar = null,Object? protein = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,fruits: null == fruits ? _self.fruits : fruits // ignore: cast_nullable_to_non_nullable
as List<FruitState>,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeState].
extension RecipeStatePatterns on RecipeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeState value)  $default,){
final _that = this;
switch (_that) {
case _RecipeState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeState value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  List<FruitState> fruits,  int calories,  double fat,  double carbohydrates,  double sugar,  double protein)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.fruits,_that.calories,_that.fat,_that.carbohydrates,_that.sugar,_that.protein);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  List<FruitState> fruits,  int calories,  double fat,  double carbohydrates,  double sugar,  double protein)  $default,) {final _that = this;
switch (_that) {
case _RecipeState():
return $default(_that.id,_that.name,_that.description,_that.fruits,_that.calories,_that.fat,_that.carbohydrates,_that.sugar,_that.protein);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  List<FruitState> fruits,  int calories,  double fat,  double carbohydrates,  double sugar,  double protein)?  $default,) {final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.fruits,_that.calories,_that.fat,_that.carbohydrates,_that.sugar,_that.protein);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeState implements RecipeState {
  const _RecipeState({this.id = 0, this.name = "", this.description = "", final  List<FruitState> fruits = const [], this.calories = 0, this.fat = 0, this.carbohydrates = 0, this.sugar = 0, this.protein = 0}): _fruits = fruits;
  factory _RecipeState.fromJson(Map<String, dynamic> json) => _$RecipeStateFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String description;
 final  List<FruitState> _fruits;
@override@JsonKey() List<FruitState> get fruits {
  if (_fruits is EqualUnmodifiableListView) return _fruits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fruits);
}

@override@JsonKey() final  int calories;
@override@JsonKey() final  double fat;
@override@JsonKey() final  double carbohydrates;
@override@JsonKey() final  double sugar;
@override@JsonKey() final  double protein;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeStateCopyWith<_RecipeState> get copyWith => __$RecipeStateCopyWithImpl<_RecipeState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._fruits, _fruits)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_fruits),calories,fat,carbohydrates,sugar,protein);

@override
String toString() {
  return 'RecipeState(id: $id, name: $name, description: $description, fruits: $fruits, calories: $calories, fat: $fat, carbohydrates: $carbohydrates, sugar: $sugar, protein: $protein)';
}


}

/// @nodoc
abstract mixin class _$RecipeStateCopyWith<$Res> implements $RecipeStateCopyWith<$Res> {
  factory _$RecipeStateCopyWith(_RecipeState value, $Res Function(_RecipeState) _then) = __$RecipeStateCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, List<FruitState> fruits, int calories, double fat, double carbohydrates, double sugar, double protein
});




}
/// @nodoc
class __$RecipeStateCopyWithImpl<$Res>
    implements _$RecipeStateCopyWith<$Res> {
  __$RecipeStateCopyWithImpl(this._self, this._then);

  final _RecipeState _self;
  final $Res Function(_RecipeState) _then;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? fruits = null,Object? calories = null,Object? fat = null,Object? carbohydrates = null,Object? sugar = null,Object? protein = null,}) {
  return _then(_RecipeState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,fruits: null == fruits ? _self._fruits : fruits // ignore: cast_nullable_to_non_nullable
as List<FruitState>,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

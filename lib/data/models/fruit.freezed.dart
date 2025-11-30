// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fruit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Fruit {

 int get id; String get name; String get family; String get order; String get genus; Nutritions get nutritions;
/// Create a copy of Fruit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FruitCopyWith<Fruit> get copyWith => _$FruitCopyWithImpl<Fruit>(this as Fruit, _$identity);

  /// Serializes this Fruit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fruit&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.family, family) || other.family == family)&&(identical(other.order, order) || other.order == order)&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.nutritions, nutritions) || other.nutritions == nutritions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,family,order,genus,nutritions);

@override
String toString() {
  return 'Fruit(id: $id, name: $name, family: $family, order: $order, genus: $genus, nutritions: $nutritions)';
}


}

/// @nodoc
abstract mixin class $FruitCopyWith<$Res>  {
  factory $FruitCopyWith(Fruit value, $Res Function(Fruit) _then) = _$FruitCopyWithImpl;
@useResult
$Res call({
 int id, String name, String family, String order, String genus, Nutritions nutritions
});


$NutritionsCopyWith<$Res> get nutritions;

}
/// @nodoc
class _$FruitCopyWithImpl<$Res>
    implements $FruitCopyWith<$Res> {
  _$FruitCopyWithImpl(this._self, this._then);

  final Fruit _self;
  final $Res Function(Fruit) _then;

/// Create a copy of Fruit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? family = null,Object? order = null,Object? genus = null,Object? nutritions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,nutritions: null == nutritions ? _self.nutritions : nutritions // ignore: cast_nullable_to_non_nullable
as Nutritions,
  ));
}
/// Create a copy of Fruit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionsCopyWith<$Res> get nutritions {
  
  return $NutritionsCopyWith<$Res>(_self.nutritions, (value) {
    return _then(_self.copyWith(nutritions: value));
  });
}
}


/// Adds pattern-matching-related methods to [Fruit].
extension FruitPatterns on Fruit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fruit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fruit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fruit value)  $default,){
final _that = this;
switch (_that) {
case _Fruit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fruit value)?  $default,){
final _that = this;
switch (_that) {
case _Fruit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String family,  String order,  String genus,  Nutritions nutritions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fruit() when $default != null:
return $default(_that.id,_that.name,_that.family,_that.order,_that.genus,_that.nutritions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String family,  String order,  String genus,  Nutritions nutritions)  $default,) {final _that = this;
switch (_that) {
case _Fruit():
return $default(_that.id,_that.name,_that.family,_that.order,_that.genus,_that.nutritions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String family,  String order,  String genus,  Nutritions nutritions)?  $default,) {final _that = this;
switch (_that) {
case _Fruit() when $default != null:
return $default(_that.id,_that.name,_that.family,_that.order,_that.genus,_that.nutritions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Fruit implements Fruit {
  const _Fruit({this.id = 0, this.name = "", this.family = "", this.order = "", this.genus = "", this.nutritions = const Nutritions()});
  factory _Fruit.fromJson(Map<String, dynamic> json) => _$FruitFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String family;
@override@JsonKey() final  String order;
@override@JsonKey() final  String genus;
@override@JsonKey() final  Nutritions nutritions;

/// Create a copy of Fruit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FruitCopyWith<_Fruit> get copyWith => __$FruitCopyWithImpl<_Fruit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FruitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fruit&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.family, family) || other.family == family)&&(identical(other.order, order) || other.order == order)&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.nutritions, nutritions) || other.nutritions == nutritions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,family,order,genus,nutritions);

@override
String toString() {
  return 'Fruit(id: $id, name: $name, family: $family, order: $order, genus: $genus, nutritions: $nutritions)';
}


}

/// @nodoc
abstract mixin class _$FruitCopyWith<$Res> implements $FruitCopyWith<$Res> {
  factory _$FruitCopyWith(_Fruit value, $Res Function(_Fruit) _then) = __$FruitCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String family, String order, String genus, Nutritions nutritions
});


@override $NutritionsCopyWith<$Res> get nutritions;

}
/// @nodoc
class __$FruitCopyWithImpl<$Res>
    implements _$FruitCopyWith<$Res> {
  __$FruitCopyWithImpl(this._self, this._then);

  final _Fruit _self;
  final $Res Function(_Fruit) _then;

/// Create a copy of Fruit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? family = null,Object? order = null,Object? genus = null,Object? nutritions = null,}) {
  return _then(_Fruit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,nutritions: null == nutritions ? _self.nutritions : nutritions // ignore: cast_nullable_to_non_nullable
as Nutritions,
  ));
}

/// Create a copy of Fruit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionsCopyWith<$Res> get nutritions {
  
  return $NutritionsCopyWith<$Res>(_self.nutritions, (value) {
    return _then(_self.copyWith(nutritions: value));
  });
}
}

// dart format on

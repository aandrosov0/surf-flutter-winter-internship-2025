// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fruit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FruitState {

 int get id; String get name; String get family; String get order; String get genus; bool get favorite; NutritionsState get nutritions;
/// Create a copy of FruitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FruitStateCopyWith<FruitState> get copyWith => _$FruitStateCopyWithImpl<FruitState>(this as FruitState, _$identity);

  /// Serializes this FruitState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FruitState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.family, family) || other.family == family)&&(identical(other.order, order) || other.order == order)&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.nutritions, nutritions) || other.nutritions == nutritions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,family,order,genus,favorite,nutritions);

@override
String toString() {
  return 'FruitState(id: $id, name: $name, family: $family, order: $order, genus: $genus, favorite: $favorite, nutritions: $nutritions)';
}


}

/// @nodoc
abstract mixin class $FruitStateCopyWith<$Res>  {
  factory $FruitStateCopyWith(FruitState value, $Res Function(FruitState) _then) = _$FruitStateCopyWithImpl;
@useResult
$Res call({
 int id, String name, String family, String order, String genus, bool favorite, NutritionsState nutritions
});


$NutritionsStateCopyWith<$Res> get nutritions;

}
/// @nodoc
class _$FruitStateCopyWithImpl<$Res>
    implements $FruitStateCopyWith<$Res> {
  _$FruitStateCopyWithImpl(this._self, this._then);

  final FruitState _self;
  final $Res Function(FruitState) _then;

/// Create a copy of FruitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? family = null,Object? order = null,Object? genus = null,Object? favorite = null,Object? nutritions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,nutritions: null == nutritions ? _self.nutritions : nutritions // ignore: cast_nullable_to_non_nullable
as NutritionsState,
  ));
}
/// Create a copy of FruitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionsStateCopyWith<$Res> get nutritions {
  
  return $NutritionsStateCopyWith<$Res>(_self.nutritions, (value) {
    return _then(_self.copyWith(nutritions: value));
  });
}
}


/// Adds pattern-matching-related methods to [FruitState].
extension FruitStatePatterns on FruitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FruitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FruitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FruitState value)  $default,){
final _that = this;
switch (_that) {
case _FruitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FruitState value)?  $default,){
final _that = this;
switch (_that) {
case _FruitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String family,  String order,  String genus,  bool favorite,  NutritionsState nutritions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FruitState() when $default != null:
return $default(_that.id,_that.name,_that.family,_that.order,_that.genus,_that.favorite,_that.nutritions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String family,  String order,  String genus,  bool favorite,  NutritionsState nutritions)  $default,) {final _that = this;
switch (_that) {
case _FruitState():
return $default(_that.id,_that.name,_that.family,_that.order,_that.genus,_that.favorite,_that.nutritions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String family,  String order,  String genus,  bool favorite,  NutritionsState nutritions)?  $default,) {final _that = this;
switch (_that) {
case _FruitState() when $default != null:
return $default(_that.id,_that.name,_that.family,_that.order,_that.genus,_that.favorite,_that.nutritions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FruitState implements FruitState {
  const _FruitState({this.id = 0, this.name = '', this.family = '', this.order = '', this.genus = '', this.favorite = false, this.nutritions = const NutritionsState()});
  factory _FruitState.fromJson(Map<String, dynamic> json) => _$FruitStateFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String family;
@override@JsonKey() final  String order;
@override@JsonKey() final  String genus;
@override@JsonKey() final  bool favorite;
@override@JsonKey() final  NutritionsState nutritions;

/// Create a copy of FruitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FruitStateCopyWith<_FruitState> get copyWith => __$FruitStateCopyWithImpl<_FruitState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FruitStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FruitState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.family, family) || other.family == family)&&(identical(other.order, order) || other.order == order)&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.favorite, favorite) || other.favorite == favorite)&&(identical(other.nutritions, nutritions) || other.nutritions == nutritions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,family,order,genus,favorite,nutritions);

@override
String toString() {
  return 'FruitState(id: $id, name: $name, family: $family, order: $order, genus: $genus, favorite: $favorite, nutritions: $nutritions)';
}


}

/// @nodoc
abstract mixin class _$FruitStateCopyWith<$Res> implements $FruitStateCopyWith<$Res> {
  factory _$FruitStateCopyWith(_FruitState value, $Res Function(_FruitState) _then) = __$FruitStateCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String family, String order, String genus, bool favorite, NutritionsState nutritions
});


@override $NutritionsStateCopyWith<$Res> get nutritions;

}
/// @nodoc
class __$FruitStateCopyWithImpl<$Res>
    implements _$FruitStateCopyWith<$Res> {
  __$FruitStateCopyWithImpl(this._self, this._then);

  final _FruitState _self;
  final $Res Function(_FruitState) _then;

/// Create a copy of FruitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? family = null,Object? order = null,Object? genus = null,Object? favorite = null,Object? nutritions = null,}) {
  return _then(_FruitState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as String,genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,favorite: null == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool,nutritions: null == nutritions ? _self.nutritions : nutritions // ignore: cast_nullable_to_non_nullable
as NutritionsState,
  ));
}

/// Create a copy of FruitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionsStateCopyWith<$Res> get nutritions {
  
  return $NutritionsStateCopyWith<$Res>(_self.nutritions, (value) {
    return _then(_self.copyWith(nutritions: value));
  });
}
}

// dart format on

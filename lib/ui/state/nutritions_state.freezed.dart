// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutritions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
NutritionsState _$NutritionsStateFromJson(
  Map<String, dynamic> json
) {
    return _NutritionState.fromJson(
      json
    );
}

/// @nodoc
mixin _$NutritionsState implements DiagnosticableTreeMixin {

 int get calories; double get fat; double get sugar; double get carbohydrates; double get protein;
/// Create a copy of NutritionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionsStateCopyWith<NutritionsState> get copyWith => _$NutritionsStateCopyWithImpl<NutritionsState>(this as NutritionsState, _$identity);

  /// Serializes this NutritionsState to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NutritionsState'))
    ..add(DiagnosticsProperty('calories', calories))..add(DiagnosticsProperty('fat', fat))..add(DiagnosticsProperty('sugar', sugar))..add(DiagnosticsProperty('carbohydrates', carbohydrates))..add(DiagnosticsProperty('protein', protein));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionsState&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,calories,fat,sugar,carbohydrates,protein);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NutritionsState(calories: $calories, fat: $fat, sugar: $sugar, carbohydrates: $carbohydrates, protein: $protein)';
}


}

/// @nodoc
abstract mixin class $NutritionsStateCopyWith<$Res>  {
  factory $NutritionsStateCopyWith(NutritionsState value, $Res Function(NutritionsState) _then) = _$NutritionsStateCopyWithImpl;
@useResult
$Res call({
 int calories, double fat, double sugar, double carbohydrates, double protein
});




}
/// @nodoc
class _$NutritionsStateCopyWithImpl<$Res>
    implements $NutritionsStateCopyWith<$Res> {
  _$NutritionsStateCopyWithImpl(this._self, this._then);

  final NutritionsState _self;
  final $Res Function(NutritionsState) _then;

/// Create a copy of NutritionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? calories = null,Object? fat = null,Object? sugar = null,Object? carbohydrates = null,Object? protein = null,}) {
  return _then(_self.copyWith(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [NutritionsState].
extension NutritionsStatePatterns on NutritionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionState value)  $default,){
final _that = this;
switch (_that) {
case _NutritionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionState value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int calories,  double fat,  double sugar,  double carbohydrates,  double protein)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionState() when $default != null:
return $default(_that.calories,_that.fat,_that.sugar,_that.carbohydrates,_that.protein);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int calories,  double fat,  double sugar,  double carbohydrates,  double protein)  $default,) {final _that = this;
switch (_that) {
case _NutritionState():
return $default(_that.calories,_that.fat,_that.sugar,_that.carbohydrates,_that.protein);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int calories,  double fat,  double sugar,  double carbohydrates,  double protein)?  $default,) {final _that = this;
switch (_that) {
case _NutritionState() when $default != null:
return $default(_that.calories,_that.fat,_that.sugar,_that.carbohydrates,_that.protein);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionState with DiagnosticableTreeMixin implements NutritionsState {
  const _NutritionState({this.calories = 0, this.fat = 0, this.sugar = 0, this.carbohydrates = 0, this.protein = 0});
  factory _NutritionState.fromJson(Map<String, dynamic> json) => _$NutritionStateFromJson(json);

@override@JsonKey() final  int calories;
@override@JsonKey() final  double fat;
@override@JsonKey() final  double sugar;
@override@JsonKey() final  double carbohydrates;
@override@JsonKey() final  double protein;

/// Create a copy of NutritionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionStateCopyWith<_NutritionState> get copyWith => __$NutritionStateCopyWithImpl<_NutritionState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionStateToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NutritionsState'))
    ..add(DiagnosticsProperty('calories', calories))..add(DiagnosticsProperty('fat', fat))..add(DiagnosticsProperty('sugar', sugar))..add(DiagnosticsProperty('carbohydrates', carbohydrates))..add(DiagnosticsProperty('protein', protein));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionState&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.sugar, sugar) || other.sugar == sugar)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.protein, protein) || other.protein == protein));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,calories,fat,sugar,carbohydrates,protein);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NutritionsState(calories: $calories, fat: $fat, sugar: $sugar, carbohydrates: $carbohydrates, protein: $protein)';
}


}

/// @nodoc
abstract mixin class _$NutritionStateCopyWith<$Res> implements $NutritionsStateCopyWith<$Res> {
  factory _$NutritionStateCopyWith(_NutritionState value, $Res Function(_NutritionState) _then) = __$NutritionStateCopyWithImpl;
@override @useResult
$Res call({
 int calories, double fat, double sugar, double carbohydrates, double protein
});




}
/// @nodoc
class __$NutritionStateCopyWithImpl<$Res>
    implements _$NutritionStateCopyWith<$Res> {
  __$NutritionStateCopyWithImpl(this._self, this._then);

  final _NutritionState _self;
  final $Res Function(_NutritionState) _then;

/// Create a copy of NutritionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? calories = null,Object? fat = null,Object? sugar = null,Object? carbohydrates = null,Object? protein = null,}) {
  return _then(_NutritionState(
calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,sugar: null == sugar ? _self.sugar : sugar // ignore: cast_nullable_to_non_nullable
as double,carbohydrates: null == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

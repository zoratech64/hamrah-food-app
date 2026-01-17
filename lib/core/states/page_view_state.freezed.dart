// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageViewState {

 int get currentIndex; int get length;
/// Create a copy of PageViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageViewStateCopyWith<PageViewState> get copyWith => _$PageViewStateCopyWithImpl<PageViewState>(this as PageViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageViewState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,length);

@override
String toString() {
  return 'PageViewState(currentIndex: $currentIndex, length: $length)';
}


}

/// @nodoc
abstract mixin class $PageViewStateCopyWith<$Res>  {
  factory $PageViewStateCopyWith(PageViewState value, $Res Function(PageViewState) _then) = _$PageViewStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, int length
});




}
/// @nodoc
class _$PageViewStateCopyWithImpl<$Res>
    implements $PageViewStateCopyWith<$Res> {
  _$PageViewStateCopyWithImpl(this._self, this._then);

  final PageViewState _self;
  final $Res Function(PageViewState) _then;

/// Create a copy of PageViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? length = null,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PageViewState].
extension PageViewStatePatterns on PageViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageViewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageViewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageViewState value)  $default,){
final _that = this;
switch (_that) {
case _PageViewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageViewState value)?  $default,){
final _that = this;
switch (_that) {
case _PageViewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  int length)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageViewState() when $default != null:
return $default(_that.currentIndex,_that.length);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  int length)  $default,) {final _that = this;
switch (_that) {
case _PageViewState():
return $default(_that.currentIndex,_that.length);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  int length)?  $default,) {final _that = this;
switch (_that) {
case _PageViewState() when $default != null:
return $default(_that.currentIndex,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class _PageViewState implements PageViewState {
   _PageViewState({this.currentIndex = 0, this.length = 0});
  

@override@JsonKey() final  int currentIndex;
@override@JsonKey() final  int length;

/// Create a copy of PageViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageViewStateCopyWith<_PageViewState> get copyWith => __$PageViewStateCopyWithImpl<_PageViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageViewState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,length);

@override
String toString() {
  return 'PageViewState(currentIndex: $currentIndex, length: $length)';
}


}

/// @nodoc
abstract mixin class _$PageViewStateCopyWith<$Res> implements $PageViewStateCopyWith<$Res> {
  factory _$PageViewStateCopyWith(_PageViewState value, $Res Function(_PageViewState) _then) = __$PageViewStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, int length
});




}
/// @nodoc
class __$PageViewStateCopyWithImpl<$Res>
    implements _$PageViewStateCopyWith<$Res> {
  __$PageViewStateCopyWithImpl(this._self, this._then);

  final _PageViewState _self;
  final $Res Function(_PageViewState) _then;

/// Create a copy of PageViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? length = null,}) {
  return _then(_PageViewState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

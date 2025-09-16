// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfigState {

 AppLanguages get language; AppState get appState;
/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigStateCopyWith<AppConfigState> get copyWith => _$AppConfigStateCopyWithImpl<AppConfigState>(this as AppConfigState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigState&&(identical(other.language, language) || other.language == language)&&(identical(other.appState, appState) || other.appState == appState));
}


@override
int get hashCode => Object.hash(runtimeType,language,appState);

@override
String toString() {
  return 'AppConfigState(language: $language, appState: $appState)';
}


}

/// @nodoc
abstract mixin class $AppConfigStateCopyWith<$Res>  {
  factory $AppConfigStateCopyWith(AppConfigState value, $Res Function(AppConfigState) _then) = _$AppConfigStateCopyWithImpl;
@useResult
$Res call({
 AppLanguages language, AppState appState
});




}
/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._self, this._then);

  final AppConfigState _self;
  final $Res Function(AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,Object? appState = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguages,appState: null == appState ? _self.appState : appState // ignore: cast_nullable_to_non_nullable
as AppState,
  ));
}

}


/// Adds pattern-matching-related methods to [AppConfigState].
extension AppConfigStatePatterns on AppConfigState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigState value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigState value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppLanguages language,  AppState appState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
return $default(_that.language,_that.appState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppLanguages language,  AppState appState)  $default,) {final _that = this;
switch (_that) {
case _AppConfigState():
return $default(_that.language,_that.appState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppLanguages language,  AppState appState)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
return $default(_that.language,_that.appState);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfigState implements AppConfigState {
  const _AppConfigState({required this.language, required this.appState});
  

@override final  AppLanguages language;
@override final  AppState appState;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigStateCopyWith<_AppConfigState> get copyWith => __$AppConfigStateCopyWithImpl<_AppConfigState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigState&&(identical(other.language, language) || other.language == language)&&(identical(other.appState, appState) || other.appState == appState));
}


@override
int get hashCode => Object.hash(runtimeType,language,appState);

@override
String toString() {
  return 'AppConfigState(language: $language, appState: $appState)';
}


}

/// @nodoc
abstract mixin class _$AppConfigStateCopyWith<$Res> implements $AppConfigStateCopyWith<$Res> {
  factory _$AppConfigStateCopyWith(_AppConfigState value, $Res Function(_AppConfigState) _then) = __$AppConfigStateCopyWithImpl;
@override @useResult
$Res call({
 AppLanguages language, AppState appState
});




}
/// @nodoc
class __$AppConfigStateCopyWithImpl<$Res>
    implements _$AppConfigStateCopyWith<$Res> {
  __$AppConfigStateCopyWithImpl(this._self, this._then);

  final _AppConfigState _self;
  final $Res Function(_AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? appState = null,}) {
  return _then(_AppConfigState(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguages,appState: null == appState ? _self.appState : appState // ignore: cast_nullable_to_non_nullable
as AppState,
  ));
}


}

// dart format on

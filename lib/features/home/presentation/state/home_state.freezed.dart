// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HomeInitial value)?  initial,TResult Function( _HomeLoading value)?  loading,TResult Function( _HomeSuccess value)?  success,TResult Function( _HomeError value)?  error,TResult Function( _HomeRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial(_that);case _HomeLoading() when loading != null:
return loading(_that);case _HomeSuccess() when success != null:
return success(_that);case _HomeError() when error != null:
return error(_that);case _HomeRefreshing() when refreshing != null:
return refreshing(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HomeInitial value)  initial,required TResult Function( _HomeLoading value)  loading,required TResult Function( _HomeSuccess value)  success,required TResult Function( _HomeError value)  error,required TResult Function( _HomeRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _HomeInitial():
return initial(_that);case _HomeLoading():
return loading(_that);case _HomeSuccess():
return success(_that);case _HomeError():
return error(_that);case _HomeRefreshing():
return refreshing(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HomeInitial value)?  initial,TResult? Function( _HomeLoading value)?  loading,TResult? Function( _HomeSuccess value)?  success,TResult? Function( _HomeError value)?  error,TResult? Function( _HomeRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial(_that);case _HomeLoading() when loading != null:
return loading(_that);case _HomeSuccess() when success != null:
return success(_that);case _HomeError() when error != null:
return error(_that);case _HomeRefreshing() when refreshing != null:
return refreshing(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( HomeWithUserEntity data)?  success,TResult Function( String message)?  error,TResult Function( HomeWithUserEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial();case _HomeLoading() when loading != null:
return loading();case _HomeSuccess() when success != null:
return success(_that.data);case _HomeError() when error != null:
return error(_that.message);case _HomeRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( HomeWithUserEntity data)  success,required TResult Function( String message)  error,required TResult Function( HomeWithUserEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _HomeInitial():
return initial();case _HomeLoading():
return loading();case _HomeSuccess():
return success(_that.data);case _HomeError():
return error(_that.message);case _HomeRefreshing():
return refreshing(_that.currentData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( HomeWithUserEntity data)?  success,TResult? Function( String message)?  error,TResult? Function( HomeWithUserEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _HomeInitial() when initial != null:
return initial();case _HomeLoading() when loading != null:
return loading();case _HomeSuccess() when success != null:
return success(_that.data);case _HomeError() when error != null:
return error(_that.message);case _HomeRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _HomeInitial implements HomeState {
  const _HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _HomeLoading implements HomeState {
  const _HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class _HomeSuccess implements HomeState {
  const _HomeSuccess(this.data);
  

 final  HomeWithUserEntity data;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeSuccessCopyWith<_HomeSuccess> get copyWith => __$HomeSuccessCopyWithImpl<_HomeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomeState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomeSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeSuccessCopyWith(_HomeSuccess value, $Res Function(_HomeSuccess) _then) = __$HomeSuccessCopyWithImpl;
@useResult
$Res call({
 HomeWithUserEntity data
});


$HomeWithUserEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$HomeSuccessCopyWithImpl<$Res>
    implements _$HomeSuccessCopyWith<$Res> {
  __$HomeSuccessCopyWithImpl(this._self, this._then);

  final _HomeSuccess _self;
  final $Res Function(_HomeSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_HomeSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomeWithUserEntity,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeWithUserEntityCopyWith<$Res> get data {
  
  return $HomeWithUserEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _HomeError implements HomeState {
  const _HomeError(this.message);
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeErrorCopyWith<_HomeError> get copyWith => __$HomeErrorCopyWithImpl<_HomeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$HomeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeErrorCopyWith(_HomeError value, $Res Function(_HomeError) _then) = __$HomeErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$HomeErrorCopyWithImpl<$Res>
    implements _$HomeErrorCopyWith<$Res> {
  __$HomeErrorCopyWithImpl(this._self, this._then);

  final _HomeError _self;
  final $Res Function(_HomeError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_HomeError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _HomeRefreshing implements HomeState {
  const _HomeRefreshing(this.currentData);
  

 final  HomeWithUserEntity currentData;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeRefreshingCopyWith<_HomeRefreshing> get copyWith => __$HomeRefreshingCopyWithImpl<_HomeRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'HomeState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$HomeRefreshingCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeRefreshingCopyWith(_HomeRefreshing value, $Res Function(_HomeRefreshing) _then) = __$HomeRefreshingCopyWithImpl;
@useResult
$Res call({
 HomeWithUserEntity currentData
});


$HomeWithUserEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$HomeRefreshingCopyWithImpl<$Res>
    implements _$HomeRefreshingCopyWith<$Res> {
  __$HomeRefreshingCopyWithImpl(this._self, this._then);

  final _HomeRefreshing _self;
  final $Res Function(_HomeRefreshing) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_HomeRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as HomeWithUserEntity,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeWithUserEntityCopyWith<$Res> get currentData {
  
  return $HomeWithUserEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

// dart format on

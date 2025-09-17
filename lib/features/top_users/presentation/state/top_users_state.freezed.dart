// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopUsersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopUsersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopUsersState()';
}


}

/// @nodoc
class $TopUsersStateCopyWith<$Res>  {
$TopUsersStateCopyWith(TopUsersState _, $Res Function(TopUsersState) __);
}


/// Adds pattern-matching-related methods to [TopUsersState].
extension TopUsersStatePatterns on TopUsersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TopUsersInitial value)?  initial,TResult Function( _TopUsersLoading value)?  loading,TResult Function( _TopUsersSuccess value)?  success,TResult Function( _TopUsersError value)?  error,TResult Function( _TopUsersRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopUsersInitial() when initial != null:
return initial(_that);case _TopUsersLoading() when loading != null:
return loading(_that);case _TopUsersSuccess() when success != null:
return success(_that);case _TopUsersError() when error != null:
return error(_that);case _TopUsersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TopUsersInitial value)  initial,required TResult Function( _TopUsersLoading value)  loading,required TResult Function( _TopUsersSuccess value)  success,required TResult Function( _TopUsersError value)  error,required TResult Function( _TopUsersRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _TopUsersInitial():
return initial(_that);case _TopUsersLoading():
return loading(_that);case _TopUsersSuccess():
return success(_that);case _TopUsersError():
return error(_that);case _TopUsersRefreshing():
return refreshing(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TopUsersInitial value)?  initial,TResult? Function( _TopUsersLoading value)?  loading,TResult? Function( _TopUsersSuccess value)?  success,TResult? Function( _TopUsersError value)?  error,TResult? Function( _TopUsersRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _TopUsersInitial() when initial != null:
return initial(_that);case _TopUsersLoading() when loading != null:
return loading(_that);case _TopUsersSuccess() when success != null:
return success(_that);case _TopUsersError() when error != null:
return error(_that);case _TopUsersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TopUsersEntity data)?  success,TResult Function( String message)?  error,TResult Function( TopUsersEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopUsersInitial() when initial != null:
return initial();case _TopUsersLoading() when loading != null:
return loading();case _TopUsersSuccess() when success != null:
return success(_that.data);case _TopUsersError() when error != null:
return error(_that.message);case _TopUsersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TopUsersEntity data)  success,required TResult Function( String message)  error,required TResult Function( TopUsersEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _TopUsersInitial():
return initial();case _TopUsersLoading():
return loading();case _TopUsersSuccess():
return success(_that.data);case _TopUsersError():
return error(_that.message);case _TopUsersRefreshing():
return refreshing(_that.currentData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TopUsersEntity data)?  success,TResult? Function( String message)?  error,TResult? Function( TopUsersEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _TopUsersInitial() when initial != null:
return initial();case _TopUsersLoading() when loading != null:
return loading();case _TopUsersSuccess() when success != null:
return success(_that.data);case _TopUsersError() when error != null:
return error(_that.message);case _TopUsersRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _TopUsersInitial implements TopUsersState {
  const _TopUsersInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopUsersState.initial()';
}


}




/// @nodoc


class _TopUsersLoading implements TopUsersState {
  const _TopUsersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TopUsersState.loading()';
}


}




/// @nodoc


class _TopUsersSuccess implements TopUsersState {
  const _TopUsersSuccess(this.data);
  

 final  TopUsersEntity data;

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopUsersSuccessCopyWith<_TopUsersSuccess> get copyWith => __$TopUsersSuccessCopyWithImpl<_TopUsersSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'TopUsersState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TopUsersSuccessCopyWith<$Res> implements $TopUsersStateCopyWith<$Res> {
  factory _$TopUsersSuccessCopyWith(_TopUsersSuccess value, $Res Function(_TopUsersSuccess) _then) = __$TopUsersSuccessCopyWithImpl;
@useResult
$Res call({
 TopUsersEntity data
});


$TopUsersEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$TopUsersSuccessCopyWithImpl<$Res>
    implements _$TopUsersSuccessCopyWith<$Res> {
  __$TopUsersSuccessCopyWithImpl(this._self, this._then);

  final _TopUsersSuccess _self;
  final $Res Function(_TopUsersSuccess) _then;

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TopUsersSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopUsersEntity,
  ));
}

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopUsersEntityCopyWith<$Res> get data {
  
  return $TopUsersEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _TopUsersError implements TopUsersState {
  const _TopUsersError(this.message);
  

 final  String message;

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopUsersErrorCopyWith<_TopUsersError> get copyWith => __$TopUsersErrorCopyWithImpl<_TopUsersError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TopUsersState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TopUsersErrorCopyWith<$Res> implements $TopUsersStateCopyWith<$Res> {
  factory _$TopUsersErrorCopyWith(_TopUsersError value, $Res Function(_TopUsersError) _then) = __$TopUsersErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TopUsersErrorCopyWithImpl<$Res>
    implements _$TopUsersErrorCopyWith<$Res> {
  __$TopUsersErrorCopyWithImpl(this._self, this._then);

  final _TopUsersError _self;
  final $Res Function(_TopUsersError) _then;

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TopUsersError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TopUsersRefreshing implements TopUsersState {
  const _TopUsersRefreshing(this.currentData);
  

 final  TopUsersEntity currentData;

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopUsersRefreshingCopyWith<_TopUsersRefreshing> get copyWith => __$TopUsersRefreshingCopyWithImpl<_TopUsersRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'TopUsersState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$TopUsersRefreshingCopyWith<$Res> implements $TopUsersStateCopyWith<$Res> {
  factory _$TopUsersRefreshingCopyWith(_TopUsersRefreshing value, $Res Function(_TopUsersRefreshing) _then) = __$TopUsersRefreshingCopyWithImpl;
@useResult
$Res call({
 TopUsersEntity currentData
});


$TopUsersEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$TopUsersRefreshingCopyWithImpl<$Res>
    implements _$TopUsersRefreshingCopyWith<$Res> {
  __$TopUsersRefreshingCopyWithImpl(this._self, this._then);

  final _TopUsersRefreshing _self;
  final $Res Function(_TopUsersRefreshing) _then;

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_TopUsersRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as TopUsersEntity,
  ));
}

/// Create a copy of TopUsersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopUsersEntityCopyWith<$Res> get currentData {
  
  return $TopUsersEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

// dart format on

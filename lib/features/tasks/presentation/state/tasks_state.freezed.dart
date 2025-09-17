// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksState()';
}


}

/// @nodoc
class $TasksStateCopyWith<$Res>  {
$TasksStateCopyWith(TasksState _, $Res Function(TasksState) __);
}


/// Adds pattern-matching-related methods to [TasksState].
extension TasksStatePatterns on TasksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TasksInitial value)?  initial,TResult Function( _TasksLoading value)?  loading,TResult Function( _TasksSuccess value)?  success,TResult Function( _TasksError value)?  error,TResult Function( _TasksRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksInitial() when initial != null:
return initial(_that);case _TasksLoading() when loading != null:
return loading(_that);case _TasksSuccess() when success != null:
return success(_that);case _TasksError() when error != null:
return error(_that);case _TasksRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TasksInitial value)  initial,required TResult Function( _TasksLoading value)  loading,required TResult Function( _TasksSuccess value)  success,required TResult Function( _TasksError value)  error,required TResult Function( _TasksRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _TasksInitial():
return initial(_that);case _TasksLoading():
return loading(_that);case _TasksSuccess():
return success(_that);case _TasksError():
return error(_that);case _TasksRefreshing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TasksInitial value)?  initial,TResult? Function( _TasksLoading value)?  loading,TResult? Function( _TasksSuccess value)?  success,TResult? Function( _TasksError value)?  error,TResult? Function( _TasksRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _TasksInitial() when initial != null:
return initial(_that);case _TasksLoading() when loading != null:
return loading(_that);case _TasksSuccess() when success != null:
return success(_that);case _TasksError() when error != null:
return error(_that);case _TasksRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TasksEntity data)?  success,TResult Function( String message)?  error,TResult Function( TasksEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksInitial() when initial != null:
return initial();case _TasksLoading() when loading != null:
return loading();case _TasksSuccess() when success != null:
return success(_that.data);case _TasksError() when error != null:
return error(_that.message);case _TasksRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TasksEntity data)  success,required TResult Function( String message)  error,required TResult Function( TasksEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _TasksInitial():
return initial();case _TasksLoading():
return loading();case _TasksSuccess():
return success(_that.data);case _TasksError():
return error(_that.message);case _TasksRefreshing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TasksEntity data)?  success,TResult? Function( String message)?  error,TResult? Function( TasksEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _TasksInitial() when initial != null:
return initial();case _TasksLoading() when loading != null:
return loading();case _TasksSuccess() when success != null:
return success(_that.data);case _TasksError() when error != null:
return error(_that.message);case _TasksRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _TasksInitial implements TasksState {
  const _TasksInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksState.initial()';
}


}




/// @nodoc


class _TasksLoading implements TasksState {
  const _TasksLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksState.loading()';
}


}




/// @nodoc


class _TasksSuccess implements TasksState {
  const _TasksSuccess(this.data);
  

 final  TasksEntity data;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksSuccessCopyWith<_TasksSuccess> get copyWith => __$TasksSuccessCopyWithImpl<_TasksSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'TasksState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TasksSuccessCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksSuccessCopyWith(_TasksSuccess value, $Res Function(_TasksSuccess) _then) = __$TasksSuccessCopyWithImpl;
@useResult
$Res call({
 TasksEntity data
});


$TasksEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$TasksSuccessCopyWithImpl<$Res>
    implements _$TasksSuccessCopyWith<$Res> {
  __$TasksSuccessCopyWithImpl(this._self, this._then);

  final _TasksSuccess _self;
  final $Res Function(_TasksSuccess) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TasksSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TasksEntity,
  ));
}

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasksEntityCopyWith<$Res> get data {
  
  return $TasksEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _TasksError implements TasksState {
  const _TasksError(this.message);
  

 final  String message;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksErrorCopyWith<_TasksError> get copyWith => __$TasksErrorCopyWithImpl<_TasksError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TasksState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TasksErrorCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksErrorCopyWith(_TasksError value, $Res Function(_TasksError) _then) = __$TasksErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TasksErrorCopyWithImpl<$Res>
    implements _$TasksErrorCopyWith<$Res> {
  __$TasksErrorCopyWithImpl(this._self, this._then);

  final _TasksError _self;
  final $Res Function(_TasksError) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TasksError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TasksRefreshing implements TasksState {
  const _TasksRefreshing(this.currentData);
  

 final  TasksEntity currentData;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksRefreshingCopyWith<_TasksRefreshing> get copyWith => __$TasksRefreshingCopyWithImpl<_TasksRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'TasksState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$TasksRefreshingCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksRefreshingCopyWith(_TasksRefreshing value, $Res Function(_TasksRefreshing) _then) = __$TasksRefreshingCopyWithImpl;
@useResult
$Res call({
 TasksEntity currentData
});


$TasksEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$TasksRefreshingCopyWithImpl<$Res>
    implements _$TasksRefreshingCopyWith<$Res> {
  __$TasksRefreshingCopyWithImpl(this._self, this._then);

  final _TasksRefreshing _self;
  final $Res Function(_TasksRefreshing) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_TasksRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as TasksEntity,
  ));
}

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasksEntityCopyWith<$Res> get currentData {
  
  return $TasksEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

/// @nodoc
mixin _$TaskOrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskOrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskOrdersState()';
}


}

/// @nodoc
class $TaskOrdersStateCopyWith<$Res>  {
$TaskOrdersStateCopyWith(TaskOrdersState _, $Res Function(TaskOrdersState) __);
}


/// Adds pattern-matching-related methods to [TaskOrdersState].
extension TaskOrdersStatePatterns on TaskOrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TaskOrdersInitial value)?  initial,TResult Function( _TaskOrdersLoading value)?  loading,TResult Function( _TaskOrdersSuccess value)?  success,TResult Function( _TaskOrdersError value)?  error,TResult Function( _TaskOrdersRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskOrdersInitial() when initial != null:
return initial(_that);case _TaskOrdersLoading() when loading != null:
return loading(_that);case _TaskOrdersSuccess() when success != null:
return success(_that);case _TaskOrdersError() when error != null:
return error(_that);case _TaskOrdersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TaskOrdersInitial value)  initial,required TResult Function( _TaskOrdersLoading value)  loading,required TResult Function( _TaskOrdersSuccess value)  success,required TResult Function( _TaskOrdersError value)  error,required TResult Function( _TaskOrdersRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _TaskOrdersInitial():
return initial(_that);case _TaskOrdersLoading():
return loading(_that);case _TaskOrdersSuccess():
return success(_that);case _TaskOrdersError():
return error(_that);case _TaskOrdersRefreshing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TaskOrdersInitial value)?  initial,TResult? Function( _TaskOrdersLoading value)?  loading,TResult? Function( _TaskOrdersSuccess value)?  success,TResult? Function( _TaskOrdersError value)?  error,TResult? Function( _TaskOrdersRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _TaskOrdersInitial() when initial != null:
return initial(_that);case _TaskOrdersLoading() when loading != null:
return loading(_that);case _TaskOrdersSuccess() when success != null:
return success(_that);case _TaskOrdersError() when error != null:
return error(_that);case _TaskOrdersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TasksOrdersEntity data)?  success,TResult Function( String message)?  error,TResult Function( TasksOrdersEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskOrdersInitial() when initial != null:
return initial();case _TaskOrdersLoading() when loading != null:
return loading();case _TaskOrdersSuccess() when success != null:
return success(_that.data);case _TaskOrdersError() when error != null:
return error(_that.message);case _TaskOrdersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TasksOrdersEntity data)  success,required TResult Function( String message)  error,required TResult Function( TasksOrdersEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _TaskOrdersInitial():
return initial();case _TaskOrdersLoading():
return loading();case _TaskOrdersSuccess():
return success(_that.data);case _TaskOrdersError():
return error(_that.message);case _TaskOrdersRefreshing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TasksOrdersEntity data)?  success,TResult? Function( String message)?  error,TResult? Function( TasksOrdersEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _TaskOrdersInitial() when initial != null:
return initial();case _TaskOrdersLoading() when loading != null:
return loading();case _TaskOrdersSuccess() when success != null:
return success(_that.data);case _TaskOrdersError() when error != null:
return error(_that.message);case _TaskOrdersRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _TaskOrdersInitial implements TaskOrdersState {
  const _TaskOrdersInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrdersInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskOrdersState.initial()';
}


}




/// @nodoc


class _TaskOrdersLoading implements TaskOrdersState {
  const _TaskOrdersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrdersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskOrdersState.loading()';
}


}




/// @nodoc


class _TaskOrdersSuccess implements TaskOrdersState {
  const _TaskOrdersSuccess(this.data);
  

 final  TasksOrdersEntity data;

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskOrdersSuccessCopyWith<_TaskOrdersSuccess> get copyWith => __$TaskOrdersSuccessCopyWithImpl<_TaskOrdersSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrdersSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'TaskOrdersState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TaskOrdersSuccessCopyWith<$Res> implements $TaskOrdersStateCopyWith<$Res> {
  factory _$TaskOrdersSuccessCopyWith(_TaskOrdersSuccess value, $Res Function(_TaskOrdersSuccess) _then) = __$TaskOrdersSuccessCopyWithImpl;
@useResult
$Res call({
 TasksOrdersEntity data
});


$TasksOrdersEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$TaskOrdersSuccessCopyWithImpl<$Res>
    implements _$TaskOrdersSuccessCopyWith<$Res> {
  __$TaskOrdersSuccessCopyWithImpl(this._self, this._then);

  final _TaskOrdersSuccess _self;
  final $Res Function(_TaskOrdersSuccess) _then;

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TaskOrdersSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TasksOrdersEntity,
  ));
}

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasksOrdersEntityCopyWith<$Res> get data {
  
  return $TasksOrdersEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _TaskOrdersError implements TaskOrdersState {
  const _TaskOrdersError(this.message);
  

 final  String message;

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskOrdersErrorCopyWith<_TaskOrdersError> get copyWith => __$TaskOrdersErrorCopyWithImpl<_TaskOrdersError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrdersError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TaskOrdersState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TaskOrdersErrorCopyWith<$Res> implements $TaskOrdersStateCopyWith<$Res> {
  factory _$TaskOrdersErrorCopyWith(_TaskOrdersError value, $Res Function(_TaskOrdersError) _then) = __$TaskOrdersErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TaskOrdersErrorCopyWithImpl<$Res>
    implements _$TaskOrdersErrorCopyWith<$Res> {
  __$TaskOrdersErrorCopyWithImpl(this._self, this._then);

  final _TaskOrdersError _self;
  final $Res Function(_TaskOrdersError) _then;

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TaskOrdersError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TaskOrdersRefreshing implements TaskOrdersState {
  const _TaskOrdersRefreshing(this.currentData);
  

 final  TasksOrdersEntity currentData;

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskOrdersRefreshingCopyWith<_TaskOrdersRefreshing> get copyWith => __$TaskOrdersRefreshingCopyWithImpl<_TaskOrdersRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrdersRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'TaskOrdersState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$TaskOrdersRefreshingCopyWith<$Res> implements $TaskOrdersStateCopyWith<$Res> {
  factory _$TaskOrdersRefreshingCopyWith(_TaskOrdersRefreshing value, $Res Function(_TaskOrdersRefreshing) _then) = __$TaskOrdersRefreshingCopyWithImpl;
@useResult
$Res call({
 TasksOrdersEntity currentData
});


$TasksOrdersEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$TaskOrdersRefreshingCopyWithImpl<$Res>
    implements _$TaskOrdersRefreshingCopyWith<$Res> {
  __$TaskOrdersRefreshingCopyWithImpl(this._self, this._then);

  final _TaskOrdersRefreshing _self;
  final $Res Function(_TaskOrdersRefreshing) _then;

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_TaskOrdersRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as TasksOrdersEntity,
  ));
}

/// Create a copy of TaskOrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasksOrdersEntityCopyWith<$Res> get currentData {
  
  return $TasksOrdersEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

/// @nodoc
mixin _$ReserveCommentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReserveCommentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReserveCommentState()';
}


}

/// @nodoc
class $ReserveCommentStateCopyWith<$Res>  {
$ReserveCommentStateCopyWith(ReserveCommentState _, $Res Function(ReserveCommentState) __);
}


/// Adds pattern-matching-related methods to [ReserveCommentState].
extension ReserveCommentStatePatterns on ReserveCommentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ReserveCommentInitial value)?  initial,TResult Function( _ReserveCommentLoading value)?  loading,TResult Function( _ReserveCommentSuccess value)?  success,TResult Function( _ReserveCommentError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReserveCommentInitial() when initial != null:
return initial(_that);case _ReserveCommentLoading() when loading != null:
return loading(_that);case _ReserveCommentSuccess() when success != null:
return success(_that);case _ReserveCommentError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ReserveCommentInitial value)  initial,required TResult Function( _ReserveCommentLoading value)  loading,required TResult Function( _ReserveCommentSuccess value)  success,required TResult Function( _ReserveCommentError value)  error,}){
final _that = this;
switch (_that) {
case _ReserveCommentInitial():
return initial(_that);case _ReserveCommentLoading():
return loading(_that);case _ReserveCommentSuccess():
return success(_that);case _ReserveCommentError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ReserveCommentInitial value)?  initial,TResult? Function( _ReserveCommentLoading value)?  loading,TResult? Function( _ReserveCommentSuccess value)?  success,TResult? Function( _ReserveCommentError value)?  error,}){
final _that = this;
switch (_that) {
case _ReserveCommentInitial() when initial != null:
return initial(_that);case _ReserveCommentLoading() when loading != null:
return loading(_that);case _ReserveCommentSuccess() when success != null:
return success(_that);case _ReserveCommentError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ReserveCommentEntity result)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReserveCommentInitial() when initial != null:
return initial();case _ReserveCommentLoading() when loading != null:
return loading();case _ReserveCommentSuccess() when success != null:
return success(_that.result);case _ReserveCommentError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ReserveCommentEntity result)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _ReserveCommentInitial():
return initial();case _ReserveCommentLoading():
return loading();case _ReserveCommentSuccess():
return success(_that.result);case _ReserveCommentError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ReserveCommentEntity result)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _ReserveCommentInitial() when initial != null:
return initial();case _ReserveCommentLoading() when loading != null:
return loading();case _ReserveCommentSuccess() when success != null:
return success(_that.result);case _ReserveCommentError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ReserveCommentInitial implements ReserveCommentState {
  const _ReserveCommentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReserveCommentState.initial()';
}


}




/// @nodoc


class _ReserveCommentLoading implements ReserveCommentState {
  const _ReserveCommentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReserveCommentState.loading()';
}


}




/// @nodoc


class _ReserveCommentSuccess implements ReserveCommentState {
  const _ReserveCommentSuccess(this.result);
  

 final  ReserveCommentEntity result;

/// Create a copy of ReserveCommentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReserveCommentSuccessCopyWith<_ReserveCommentSuccess> get copyWith => __$ReserveCommentSuccessCopyWithImpl<_ReserveCommentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentSuccess&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'ReserveCommentState.success(result: $result)';
}


}

/// @nodoc
abstract mixin class _$ReserveCommentSuccessCopyWith<$Res> implements $ReserveCommentStateCopyWith<$Res> {
  factory _$ReserveCommentSuccessCopyWith(_ReserveCommentSuccess value, $Res Function(_ReserveCommentSuccess) _then) = __$ReserveCommentSuccessCopyWithImpl;
@useResult
$Res call({
 ReserveCommentEntity result
});


$ReserveCommentEntityCopyWith<$Res> get result;

}
/// @nodoc
class __$ReserveCommentSuccessCopyWithImpl<$Res>
    implements _$ReserveCommentSuccessCopyWith<$Res> {
  __$ReserveCommentSuccessCopyWithImpl(this._self, this._then);

  final _ReserveCommentSuccess _self;
  final $Res Function(_ReserveCommentSuccess) _then;

/// Create a copy of ReserveCommentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_ReserveCommentSuccess(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ReserveCommentEntity,
  ));
}

/// Create a copy of ReserveCommentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReserveCommentEntityCopyWith<$Res> get result {
  
  return $ReserveCommentEntityCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

/// @nodoc


class _ReserveCommentError implements ReserveCommentState {
  const _ReserveCommentError(this.message);
  

 final  String message;

/// Create a copy of ReserveCommentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReserveCommentErrorCopyWith<_ReserveCommentError> get copyWith => __$ReserveCommentErrorCopyWithImpl<_ReserveCommentError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReserveCommentState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReserveCommentErrorCopyWith<$Res> implements $ReserveCommentStateCopyWith<$Res> {
  factory _$ReserveCommentErrorCopyWith(_ReserveCommentError value, $Res Function(_ReserveCommentError) _then) = __$ReserveCommentErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ReserveCommentErrorCopyWithImpl<$Res>
    implements _$ReserveCommentErrorCopyWith<$Res> {
  __$ReserveCommentErrorCopyWithImpl(this._self, this._then);

  final _ReserveCommentError _self;
  final $Res Function(_ReserveCommentError) _then;

/// Create a copy of ReserveCommentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ReserveCommentError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddTaskOrderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskOrderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskOrderState()';
}


}

/// @nodoc
class $AddTaskOrderStateCopyWith<$Res>  {
$AddTaskOrderStateCopyWith(AddTaskOrderState _, $Res Function(AddTaskOrderState) __);
}


/// Adds pattern-matching-related methods to [AddTaskOrderState].
extension AddTaskOrderStatePatterns on AddTaskOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddTaskOrderInitial value)?  initial,TResult Function( _AddTaskOrderLoading value)?  loading,TResult Function( _AddTaskOrderSuccess value)?  success,TResult Function( _AddTaskOrderError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTaskOrderInitial() when initial != null:
return initial(_that);case _AddTaskOrderLoading() when loading != null:
return loading(_that);case _AddTaskOrderSuccess() when success != null:
return success(_that);case _AddTaskOrderError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddTaskOrderInitial value)  initial,required TResult Function( _AddTaskOrderLoading value)  loading,required TResult Function( _AddTaskOrderSuccess value)  success,required TResult Function( _AddTaskOrderError value)  error,}){
final _that = this;
switch (_that) {
case _AddTaskOrderInitial():
return initial(_that);case _AddTaskOrderLoading():
return loading(_that);case _AddTaskOrderSuccess():
return success(_that);case _AddTaskOrderError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddTaskOrderInitial value)?  initial,TResult? Function( _AddTaskOrderLoading value)?  loading,TResult? Function( _AddTaskOrderSuccess value)?  success,TResult? Function( _AddTaskOrderError value)?  error,}){
final _that = this;
switch (_that) {
case _AddTaskOrderInitial() when initial != null:
return initial(_that);case _AddTaskOrderLoading() when loading != null:
return loading(_that);case _AddTaskOrderSuccess() when success != null:
return success(_that);case _AddTaskOrderError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTaskOrderInitial() when initial != null:
return initial();case _AddTaskOrderLoading() when loading != null:
return loading();case _AddTaskOrderSuccess() when success != null:
return success();case _AddTaskOrderError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _AddTaskOrderInitial():
return initial();case _AddTaskOrderLoading():
return loading();case _AddTaskOrderSuccess():
return success();case _AddTaskOrderError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _AddTaskOrderInitial() when initial != null:
return initial();case _AddTaskOrderLoading() when loading != null:
return loading();case _AddTaskOrderSuccess() when success != null:
return success();case _AddTaskOrderError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _AddTaskOrderInitial implements AddTaskOrderState {
  const _AddTaskOrderInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskOrderInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskOrderState.initial()';
}


}




/// @nodoc


class _AddTaskOrderLoading implements AddTaskOrderState {
  const _AddTaskOrderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskOrderLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskOrderState.loading()';
}


}




/// @nodoc


class _AddTaskOrderSuccess implements AddTaskOrderState {
  const _AddTaskOrderSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskOrderSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskOrderState.success()';
}


}




/// @nodoc


class _AddTaskOrderError implements AddTaskOrderState {
  const _AddTaskOrderError(this.message);
  

 final  String message;

/// Create a copy of AddTaskOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTaskOrderErrorCopyWith<_AddTaskOrderError> get copyWith => __$AddTaskOrderErrorCopyWithImpl<_AddTaskOrderError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskOrderError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddTaskOrderState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AddTaskOrderErrorCopyWith<$Res> implements $AddTaskOrderStateCopyWith<$Res> {
  factory _$AddTaskOrderErrorCopyWith(_AddTaskOrderError value, $Res Function(_AddTaskOrderError) _then) = __$AddTaskOrderErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AddTaskOrderErrorCopyWithImpl<$Res>
    implements _$AddTaskOrderErrorCopyWith<$Res> {
  __$AddTaskOrderErrorCopyWithImpl(this._self, this._then);

  final _AddTaskOrderError _self;
  final $Res Function(_AddTaskOrderError) _then;

/// Create a copy of AddTaskOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AddTaskOrderError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

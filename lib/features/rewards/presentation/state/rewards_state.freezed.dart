// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState()';
}


}

/// @nodoc
class $OrdersStateCopyWith<$Res>  {
$OrdersStateCopyWith(OrdersState _, $Res Function(OrdersState) __);
}


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OrdersInitial value)?  initial,TResult Function( _OrdersLoading value)?  loading,TResult Function( _OrdersSuccess value)?  success,TResult Function( _OrdersError value)?  error,TResult Function( _OrdersRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersInitial() when initial != null:
return initial(_that);case _OrdersLoading() when loading != null:
return loading(_that);case _OrdersSuccess() when success != null:
return success(_that);case _OrdersError() when error != null:
return error(_that);case _OrdersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OrdersInitial value)  initial,required TResult Function( _OrdersLoading value)  loading,required TResult Function( _OrdersSuccess value)  success,required TResult Function( _OrdersError value)  error,required TResult Function( _OrdersRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _OrdersInitial():
return initial(_that);case _OrdersLoading():
return loading(_that);case _OrdersSuccess():
return success(_that);case _OrdersError():
return error(_that);case _OrdersRefreshing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OrdersInitial value)?  initial,TResult? Function( _OrdersLoading value)?  loading,TResult? Function( _OrdersSuccess value)?  success,TResult? Function( _OrdersError value)?  error,TResult? Function( _OrdersRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _OrdersInitial() when initial != null:
return initial(_that);case _OrdersLoading() when loading != null:
return loading(_that);case _OrdersSuccess() when success != null:
return success(_that);case _OrdersError() when error != null:
return error(_that);case _OrdersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( OrdersEntity data)?  success,TResult Function( Failure failure)?  error,TResult Function( OrdersEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersInitial() when initial != null:
return initial();case _OrdersLoading() when loading != null:
return loading();case _OrdersSuccess() when success != null:
return success(_that.data);case _OrdersError() when error != null:
return error(_that.failure);case _OrdersRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( OrdersEntity data)  success,required TResult Function( Failure failure)  error,required TResult Function( OrdersEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _OrdersInitial():
return initial();case _OrdersLoading():
return loading();case _OrdersSuccess():
return success(_that.data);case _OrdersError():
return error(_that.failure);case _OrdersRefreshing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( OrdersEntity data)?  success,TResult? Function( Failure failure)?  error,TResult? Function( OrdersEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _OrdersInitial() when initial != null:
return initial();case _OrdersLoading() when loading != null:
return loading();case _OrdersSuccess() when success != null:
return success(_that.data);case _OrdersError() when error != null:
return error(_that.failure);case _OrdersRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersInitial implements OrdersState {
  const _OrdersInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.initial()';
}


}




/// @nodoc


class _OrdersLoading implements OrdersState {
  const _OrdersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.loading()';
}


}




/// @nodoc


class _OrdersSuccess implements OrdersState {
  const _OrdersSuccess(this.data);
  

 final  OrdersEntity data;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersSuccessCopyWith<_OrdersSuccess> get copyWith => __$OrdersSuccessCopyWithImpl<_OrdersSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'OrdersState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$OrdersSuccessCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersSuccessCopyWith(_OrdersSuccess value, $Res Function(_OrdersSuccess) _then) = __$OrdersSuccessCopyWithImpl;
@useResult
$Res call({
 OrdersEntity data
});


$OrdersEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$OrdersSuccessCopyWithImpl<$Res>
    implements _$OrdersSuccessCopyWith<$Res> {
  __$OrdersSuccessCopyWithImpl(this._self, this._then);

  final _OrdersSuccess _self;
  final $Res Function(_OrdersSuccess) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_OrdersSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OrdersEntity,
  ));
}

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersEntityCopyWith<$Res> get data {
  
  return $OrdersEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _OrdersError implements OrdersState {
  const _OrdersError(this.failure);
  

 final  Failure failure;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersErrorCopyWith<_OrdersError> get copyWith => __$OrdersErrorCopyWithImpl<_OrdersError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'OrdersState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$OrdersErrorCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersErrorCopyWith(_OrdersError value, $Res Function(_OrdersError) _then) = __$OrdersErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$OrdersErrorCopyWithImpl<$Res>
    implements _$OrdersErrorCopyWith<$Res> {
  __$OrdersErrorCopyWithImpl(this._self, this._then);

  final _OrdersError _self;
  final $Res Function(_OrdersError) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_OrdersError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _OrdersRefreshing implements OrdersState {
  const _OrdersRefreshing(this.currentData);
  

 final  OrdersEntity currentData;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersRefreshingCopyWith<_OrdersRefreshing> get copyWith => __$OrdersRefreshingCopyWithImpl<_OrdersRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'OrdersState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$OrdersRefreshingCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersRefreshingCopyWith(_OrdersRefreshing value, $Res Function(_OrdersRefreshing) _then) = __$OrdersRefreshingCopyWithImpl;
@useResult
$Res call({
 OrdersEntity currentData
});


$OrdersEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$OrdersRefreshingCopyWithImpl<$Res>
    implements _$OrdersRefreshingCopyWith<$Res> {
  __$OrdersRefreshingCopyWithImpl(this._self, this._then);

  final _OrdersRefreshing _self;
  final $Res Function(_OrdersRefreshing) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_OrdersRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as OrdersEntity,
  ));
}

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersEntityCopyWith<$Res> get currentData {
  
  return $OrdersEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

/// @nodoc
mixin _$TransactionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsState()';
}


}

/// @nodoc
class $TransactionsStateCopyWith<$Res>  {
$TransactionsStateCopyWith(TransactionsState _, $Res Function(TransactionsState) __);
}


/// Adds pattern-matching-related methods to [TransactionsState].
extension TransactionsStatePatterns on TransactionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TransactionsInitial value)?  initial,TResult Function( _TransactionsLoading value)?  loading,TResult Function( _TransactionsSuccess value)?  success,TResult Function( _TransactionsError value)?  error,TResult Function( _TransactionsRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionsInitial() when initial != null:
return initial(_that);case _TransactionsLoading() when loading != null:
return loading(_that);case _TransactionsSuccess() when success != null:
return success(_that);case _TransactionsError() when error != null:
return error(_that);case _TransactionsRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TransactionsInitial value)  initial,required TResult Function( _TransactionsLoading value)  loading,required TResult Function( _TransactionsSuccess value)  success,required TResult Function( _TransactionsError value)  error,required TResult Function( _TransactionsRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _TransactionsInitial():
return initial(_that);case _TransactionsLoading():
return loading(_that);case _TransactionsSuccess():
return success(_that);case _TransactionsError():
return error(_that);case _TransactionsRefreshing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TransactionsInitial value)?  initial,TResult? Function( _TransactionsLoading value)?  loading,TResult? Function( _TransactionsSuccess value)?  success,TResult? Function( _TransactionsError value)?  error,TResult? Function( _TransactionsRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _TransactionsInitial() when initial != null:
return initial(_that);case _TransactionsLoading() when loading != null:
return loading(_that);case _TransactionsSuccess() when success != null:
return success(_that);case _TransactionsError() when error != null:
return error(_that);case _TransactionsRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TransactionsEntity data)?  success,TResult Function( Failure failure)?  error,TResult Function( TransactionsEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionsInitial() when initial != null:
return initial();case _TransactionsLoading() when loading != null:
return loading();case _TransactionsSuccess() when success != null:
return success(_that.data);case _TransactionsError() when error != null:
return error(_that.failure);case _TransactionsRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TransactionsEntity data)  success,required TResult Function( Failure failure)  error,required TResult Function( TransactionsEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _TransactionsInitial():
return initial();case _TransactionsLoading():
return loading();case _TransactionsSuccess():
return success(_that.data);case _TransactionsError():
return error(_that.failure);case _TransactionsRefreshing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TransactionsEntity data)?  success,TResult? Function( Failure failure)?  error,TResult? Function( TransactionsEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _TransactionsInitial() when initial != null:
return initial();case _TransactionsLoading() when loading != null:
return loading();case _TransactionsSuccess() when success != null:
return success(_that.data);case _TransactionsError() when error != null:
return error(_that.failure);case _TransactionsRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionsInitial implements TransactionsState {
  const _TransactionsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsState.initial()';
}


}




/// @nodoc


class _TransactionsLoading implements TransactionsState {
  const _TransactionsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionsState.loading()';
}


}




/// @nodoc


class _TransactionsSuccess implements TransactionsState {
  const _TransactionsSuccess(this.data);
  

 final  TransactionsEntity data;

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsSuccessCopyWith<_TransactionsSuccess> get copyWith => __$TransactionsSuccessCopyWithImpl<_TransactionsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'TransactionsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TransactionsSuccessCopyWith<$Res> implements $TransactionsStateCopyWith<$Res> {
  factory _$TransactionsSuccessCopyWith(_TransactionsSuccess value, $Res Function(_TransactionsSuccess) _then) = __$TransactionsSuccessCopyWithImpl;
@useResult
$Res call({
 TransactionsEntity data
});


$TransactionsEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$TransactionsSuccessCopyWithImpl<$Res>
    implements _$TransactionsSuccessCopyWith<$Res> {
  __$TransactionsSuccessCopyWithImpl(this._self, this._then);

  final _TransactionsSuccess _self;
  final $Res Function(_TransactionsSuccess) _then;

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TransactionsSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionsEntity,
  ));
}

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionsEntityCopyWith<$Res> get data {
  
  return $TransactionsEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _TransactionsError implements TransactionsState {
  const _TransactionsError(this.failure);
  

 final  Failure failure;

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsErrorCopyWith<_TransactionsError> get copyWith => __$TransactionsErrorCopyWithImpl<_TransactionsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TransactionsState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$TransactionsErrorCopyWith<$Res> implements $TransactionsStateCopyWith<$Res> {
  factory _$TransactionsErrorCopyWith(_TransactionsError value, $Res Function(_TransactionsError) _then) = __$TransactionsErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$TransactionsErrorCopyWithImpl<$Res>
    implements _$TransactionsErrorCopyWith<$Res> {
  __$TransactionsErrorCopyWithImpl(this._self, this._then);

  final _TransactionsError _self;
  final $Res Function(_TransactionsError) _then;

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_TransactionsError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _TransactionsRefreshing implements TransactionsState {
  const _TransactionsRefreshing(this.currentData);
  

 final  TransactionsEntity currentData;

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsRefreshingCopyWith<_TransactionsRefreshing> get copyWith => __$TransactionsRefreshingCopyWithImpl<_TransactionsRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'TransactionsState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$TransactionsRefreshingCopyWith<$Res> implements $TransactionsStateCopyWith<$Res> {
  factory _$TransactionsRefreshingCopyWith(_TransactionsRefreshing value, $Res Function(_TransactionsRefreshing) _then) = __$TransactionsRefreshingCopyWithImpl;
@useResult
$Res call({
 TransactionsEntity currentData
});


$TransactionsEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$TransactionsRefreshingCopyWithImpl<$Res>
    implements _$TransactionsRefreshingCopyWith<$Res> {
  __$TransactionsRefreshingCopyWithImpl(this._self, this._then);

  final _TransactionsRefreshing _self;
  final $Res Function(_TransactionsRefreshing) _then;

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_TransactionsRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as TransactionsEntity,
  ));
}

/// Create a copy of TransactionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionsEntityCopyWith<$Res> get currentData {
  
  return $TransactionsEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

/// @nodoc
mixin _$PayoutsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayoutsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayoutsState()';
}


}

/// @nodoc
class $PayoutsStateCopyWith<$Res>  {
$PayoutsStateCopyWith(PayoutsState _, $Res Function(PayoutsState) __);
}


/// Adds pattern-matching-related methods to [PayoutsState].
extension PayoutsStatePatterns on PayoutsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PayoutsInitial value)?  initial,TResult Function( _PayoutsLoading value)?  loading,TResult Function( _PayoutsSuccess value)?  success,TResult Function( _PayoutsError value)?  error,TResult Function( _PayoutsRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayoutsInitial() when initial != null:
return initial(_that);case _PayoutsLoading() when loading != null:
return loading(_that);case _PayoutsSuccess() when success != null:
return success(_that);case _PayoutsError() when error != null:
return error(_that);case _PayoutsRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PayoutsInitial value)  initial,required TResult Function( _PayoutsLoading value)  loading,required TResult Function( _PayoutsSuccess value)  success,required TResult Function( _PayoutsError value)  error,required TResult Function( _PayoutsRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _PayoutsInitial():
return initial(_that);case _PayoutsLoading():
return loading(_that);case _PayoutsSuccess():
return success(_that);case _PayoutsError():
return error(_that);case _PayoutsRefreshing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PayoutsInitial value)?  initial,TResult? Function( _PayoutsLoading value)?  loading,TResult? Function( _PayoutsSuccess value)?  success,TResult? Function( _PayoutsError value)?  error,TResult? Function( _PayoutsRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _PayoutsInitial() when initial != null:
return initial(_that);case _PayoutsLoading() when loading != null:
return loading(_that);case _PayoutsSuccess() when success != null:
return success(_that);case _PayoutsError() when error != null:
return error(_that);case _PayoutsRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PayoutsEntity data)?  success,TResult Function( Failure failure)?  error,TResult Function( PayoutsEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayoutsInitial() when initial != null:
return initial();case _PayoutsLoading() when loading != null:
return loading();case _PayoutsSuccess() when success != null:
return success(_that.data);case _PayoutsError() when error != null:
return error(_that.failure);case _PayoutsRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PayoutsEntity data)  success,required TResult Function( Failure failure)  error,required TResult Function( PayoutsEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _PayoutsInitial():
return initial();case _PayoutsLoading():
return loading();case _PayoutsSuccess():
return success(_that.data);case _PayoutsError():
return error(_that.failure);case _PayoutsRefreshing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PayoutsEntity data)?  success,TResult? Function( Failure failure)?  error,TResult? Function( PayoutsEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _PayoutsInitial() when initial != null:
return initial();case _PayoutsLoading() when loading != null:
return loading();case _PayoutsSuccess() when success != null:
return success(_that.data);case _PayoutsError() when error != null:
return error(_that.failure);case _PayoutsRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _PayoutsInitial implements PayoutsState {
  const _PayoutsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayoutsState.initial()';
}


}




/// @nodoc


class _PayoutsLoading implements PayoutsState {
  const _PayoutsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayoutsState.loading()';
}


}




/// @nodoc


class _PayoutsSuccess implements PayoutsState {
  const _PayoutsSuccess(this.data);
  

 final  PayoutsEntity data;

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsSuccessCopyWith<_PayoutsSuccess> get copyWith => __$PayoutsSuccessCopyWithImpl<_PayoutsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PayoutsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PayoutsSuccessCopyWith<$Res> implements $PayoutsStateCopyWith<$Res> {
  factory _$PayoutsSuccessCopyWith(_PayoutsSuccess value, $Res Function(_PayoutsSuccess) _then) = __$PayoutsSuccessCopyWithImpl;
@useResult
$Res call({
 PayoutsEntity data
});


$PayoutsEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$PayoutsSuccessCopyWithImpl<$Res>
    implements _$PayoutsSuccessCopyWith<$Res> {
  __$PayoutsSuccessCopyWithImpl(this._self, this._then);

  final _PayoutsSuccess _self;
  final $Res Function(_PayoutsSuccess) _then;

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PayoutsSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PayoutsEntity,
  ));
}

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayoutsEntityCopyWith<$Res> get data {
  
  return $PayoutsEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _PayoutsError implements PayoutsState {
  const _PayoutsError(this.failure);
  

 final  Failure failure;

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsErrorCopyWith<_PayoutsError> get copyWith => __$PayoutsErrorCopyWithImpl<_PayoutsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'PayoutsState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$PayoutsErrorCopyWith<$Res> implements $PayoutsStateCopyWith<$Res> {
  factory _$PayoutsErrorCopyWith(_PayoutsError value, $Res Function(_PayoutsError) _then) = __$PayoutsErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$PayoutsErrorCopyWithImpl<$Res>
    implements _$PayoutsErrorCopyWith<$Res> {
  __$PayoutsErrorCopyWithImpl(this._self, this._then);

  final _PayoutsError _self;
  final $Res Function(_PayoutsError) _then;

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_PayoutsError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _PayoutsRefreshing implements PayoutsState {
  const _PayoutsRefreshing(this.currentData);
  

 final  PayoutsEntity currentData;

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsRefreshingCopyWith<_PayoutsRefreshing> get copyWith => __$PayoutsRefreshingCopyWithImpl<_PayoutsRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'PayoutsState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$PayoutsRefreshingCopyWith<$Res> implements $PayoutsStateCopyWith<$Res> {
  factory _$PayoutsRefreshingCopyWith(_PayoutsRefreshing value, $Res Function(_PayoutsRefreshing) _then) = __$PayoutsRefreshingCopyWithImpl;
@useResult
$Res call({
 PayoutsEntity currentData
});


$PayoutsEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$PayoutsRefreshingCopyWithImpl<$Res>
    implements _$PayoutsRefreshingCopyWith<$Res> {
  __$PayoutsRefreshingCopyWithImpl(this._self, this._then);

  final _PayoutsRefreshing _self;
  final $Res Function(_PayoutsRefreshing) _then;

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_PayoutsRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as PayoutsEntity,
  ));
}

/// Create a copy of PayoutsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayoutsEntityCopyWith<$Res> get currentData {
  
  return $PayoutsEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

/// @nodoc
mixin _$RedeemState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedeemState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RedeemState()';
}


}

/// @nodoc
class $RedeemStateCopyWith<$Res>  {
$RedeemStateCopyWith(RedeemState _, $Res Function(RedeemState) __);
}


/// Adds pattern-matching-related methods to [RedeemState].
extension RedeemStatePatterns on RedeemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RedeemInitial value)?  initial,TResult Function( _RedeemLoading value)?  loading,TResult Function( _RedeemSuccess value)?  success,TResult Function( _RedeemError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedeemInitial() when initial != null:
return initial(_that);case _RedeemLoading() when loading != null:
return loading(_that);case _RedeemSuccess() when success != null:
return success(_that);case _RedeemError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RedeemInitial value)  initial,required TResult Function( _RedeemLoading value)  loading,required TResult Function( _RedeemSuccess value)  success,required TResult Function( _RedeemError value)  error,}){
final _that = this;
switch (_that) {
case _RedeemInitial():
return initial(_that);case _RedeemLoading():
return loading(_that);case _RedeemSuccess():
return success(_that);case _RedeemError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RedeemInitial value)?  initial,TResult? Function( _RedeemLoading value)?  loading,TResult? Function( _RedeemSuccess value)?  success,TResult? Function( _RedeemError value)?  error,}){
final _that = this;
switch (_that) {
case _RedeemInitial() when initial != null:
return initial(_that);case _RedeemLoading() when loading != null:
return loading(_that);case _RedeemSuccess() when success != null:
return success(_that);case _RedeemError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedeemInitial() when initial != null:
return initial();case _RedeemLoading() when loading != null:
return loading();case _RedeemSuccess() when success != null:
return success();case _RedeemError() when error != null:
return error(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _RedeemInitial():
return initial();case _RedeemLoading():
return loading();case _RedeemSuccess():
return success();case _RedeemError():
return error(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _RedeemInitial() when initial != null:
return initial();case _RedeemLoading() when loading != null:
return loading();case _RedeemSuccess() when success != null:
return success();case _RedeemError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _RedeemInitial implements RedeemState {
  const _RedeemInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RedeemState.initial()';
}


}




/// @nodoc


class _RedeemLoading implements RedeemState {
  const _RedeemLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RedeemState.loading()';
}


}




/// @nodoc


class _RedeemSuccess implements RedeemState {
  const _RedeemSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RedeemState.success()';
}


}




/// @nodoc


class _RedeemError implements RedeemState {
  const _RedeemError(this.failure);
  

 final  Failure failure;

/// Create a copy of RedeemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedeemErrorCopyWith<_RedeemError> get copyWith => __$RedeemErrorCopyWithImpl<_RedeemError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'RedeemState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$RedeemErrorCopyWith<$Res> implements $RedeemStateCopyWith<$Res> {
  factory _$RedeemErrorCopyWith(_RedeemError value, $Res Function(_RedeemError) _then) = __$RedeemErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$RedeemErrorCopyWithImpl<$Res>
    implements _$RedeemErrorCopyWith<$Res> {
  __$RedeemErrorCopyWithImpl(this._self, this._then);

  final _RedeemError _self;
  final $Res Function(_RedeemError) _then;

/// Create a copy of RedeemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_RedeemError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on

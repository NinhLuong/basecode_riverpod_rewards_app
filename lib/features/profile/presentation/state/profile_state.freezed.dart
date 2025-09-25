// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileInitial value)?  initial,TResult Function( _ProfileLoading value)?  loading,TResult Function( _ProfileSuccess value)?  success,TResult Function( _ProfileError value)?  error,TResult Function( _ProfileRefreshing value)?  refreshing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileInitial() when initial != null:
return initial(_that);case _ProfileLoading() when loading != null:
return loading(_that);case _ProfileSuccess() when success != null:
return success(_that);case _ProfileError() when error != null:
return error(_that);case _ProfileRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileInitial value)  initial,required TResult Function( _ProfileLoading value)  loading,required TResult Function( _ProfileSuccess value)  success,required TResult Function( _ProfileError value)  error,required TResult Function( _ProfileRefreshing value)  refreshing,}){
final _that = this;
switch (_that) {
case _ProfileInitial():
return initial(_that);case _ProfileLoading():
return loading(_that);case _ProfileSuccess():
return success(_that);case _ProfileError():
return error(_that);case _ProfileRefreshing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileInitial value)?  initial,TResult? Function( _ProfileLoading value)?  loading,TResult? Function( _ProfileSuccess value)?  success,TResult? Function( _ProfileError value)?  error,TResult? Function( _ProfileRefreshing value)?  refreshing,}){
final _that = this;
switch (_that) {
case _ProfileInitial() when initial != null:
return initial(_that);case _ProfileLoading() when loading != null:
return loading(_that);case _ProfileSuccess() when success != null:
return success(_that);case _ProfileError() when error != null:
return error(_that);case _ProfileRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProfileEntity data)?  success,TResult Function( Failure failure)?  error,TResult Function( ProfileEntity currentData)?  refreshing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileInitial() when initial != null:
return initial();case _ProfileLoading() when loading != null:
return loading();case _ProfileSuccess() when success != null:
return success(_that.data);case _ProfileError() when error != null:
return error(_that.failure);case _ProfileRefreshing() when refreshing != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProfileEntity data)  success,required TResult Function( Failure failure)  error,required TResult Function( ProfileEntity currentData)  refreshing,}) {final _that = this;
switch (_that) {
case _ProfileInitial():
return initial();case _ProfileLoading():
return loading();case _ProfileSuccess():
return success(_that.data);case _ProfileError():
return error(_that.failure);case _ProfileRefreshing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProfileEntity data)?  success,TResult? Function( Failure failure)?  error,TResult? Function( ProfileEntity currentData)?  refreshing,}) {final _that = this;
switch (_that) {
case _ProfileInitial() when initial != null:
return initial();case _ProfileLoading() when loading != null:
return loading();case _ProfileSuccess() when success != null:
return success(_that.data);case _ProfileError() when error != null:
return error(_that.failure);case _ProfileRefreshing() when refreshing != null:
return refreshing(_that.currentData);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileInitial implements ProfileState {
  const _ProfileInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class _ProfileLoading implements ProfileState {
  const _ProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class _ProfileSuccess implements ProfileState {
  const _ProfileSuccess(this.data);
  

 final  ProfileEntity data;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSuccessCopyWith<_ProfileSuccess> get copyWith => __$ProfileSuccessCopyWithImpl<_ProfileSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProfileSuccessCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileSuccessCopyWith(_ProfileSuccess value, $Res Function(_ProfileSuccess) _then) = __$ProfileSuccessCopyWithImpl;
@useResult
$Res call({
 ProfileEntity data
});


$ProfileEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$ProfileSuccessCopyWithImpl<$Res>
    implements _$ProfileSuccessCopyWith<$Res> {
  __$ProfileSuccessCopyWithImpl(this._self, this._then);

  final _ProfileSuccess _self;
  final $Res Function(_ProfileSuccess) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProfileSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileEntity,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<$Res> get data {
  
  return $ProfileEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _ProfileError implements ProfileState {
  const _ProfileError(this.failure);
  

 final  Failure failure;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileErrorCopyWith<_ProfileError> get copyWith => __$ProfileErrorCopyWithImpl<_ProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'ProfileState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ProfileErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileErrorCopyWith(_ProfileError value, $Res Function(_ProfileError) _then) = __$ProfileErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$ProfileErrorCopyWithImpl<$Res>
    implements _$ProfileErrorCopyWith<$Res> {
  __$ProfileErrorCopyWithImpl(this._self, this._then);

  final _ProfileError _self;
  final $Res Function(_ProfileError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_ProfileError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _ProfileRefreshing implements ProfileState {
  const _ProfileRefreshing(this.currentData);
  

 final  ProfileEntity currentData;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileRefreshingCopyWith<_ProfileRefreshing> get copyWith => __$ProfileRefreshingCopyWithImpl<_ProfileRefreshing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileRefreshing&&(identical(other.currentData, currentData) || other.currentData == currentData));
}


@override
int get hashCode => Object.hash(runtimeType,currentData);

@override
String toString() {
  return 'ProfileState.refreshing(currentData: $currentData)';
}


}

/// @nodoc
abstract mixin class _$ProfileRefreshingCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileRefreshingCopyWith(_ProfileRefreshing value, $Res Function(_ProfileRefreshing) _then) = __$ProfileRefreshingCopyWithImpl;
@useResult
$Res call({
 ProfileEntity currentData
});


$ProfileEntityCopyWith<$Res> get currentData;

}
/// @nodoc
class __$ProfileRefreshingCopyWithImpl<$Res>
    implements _$ProfileRefreshingCopyWith<$Res> {
  __$ProfileRefreshingCopyWithImpl(this._self, this._then);

  final _ProfileRefreshing _self;
  final $Res Function(_ProfileRefreshing) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentData = null,}) {
  return _then(_ProfileRefreshing(
null == currentData ? _self.currentData : currentData // ignore: cast_nullable_to_non_nullable
as ProfileEntity,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<$Res> get currentData {
  
  return $ProfileEntityCopyWith<$Res>(_self.currentData, (value) {
    return _then(_self.copyWith(currentData: value));
  });
}
}

// dart format on

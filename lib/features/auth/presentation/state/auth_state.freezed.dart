// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginInitial value)?  initial,TResult Function( _LoginLoading value)?  loading,TResult Function( _LoginSuccess value)?  success,TResult Function( _LoginError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial(_that);case _LoginLoading() when loading != null:
return loading(_that);case _LoginSuccess() when success != null:
return success(_that);case _LoginError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginInitial value)  initial,required TResult Function( _LoginLoading value)  loading,required TResult Function( _LoginSuccess value)  success,required TResult Function( _LoginError value)  error,}){
final _that = this;
switch (_that) {
case _LoginInitial():
return initial(_that);case _LoginLoading():
return loading(_that);case _LoginSuccess():
return success(_that);case _LoginError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginInitial value)?  initial,TResult? Function( _LoginLoading value)?  loading,TResult? Function( _LoginSuccess value)?  success,TResult? Function( _LoginError value)?  error,}){
final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial(_that);case _LoginLoading() when loading != null:
return loading(_that);case _LoginSuccess() when success != null:
return success(_that);case _LoginError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user)?  success,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial();case _LoginLoading() when loading != null:
return loading();case _LoginSuccess() when success != null:
return success(_that.user);case _LoginError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user)  success,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _LoginInitial():
return initial();case _LoginLoading():
return loading();case _LoginSuccess():
return success(_that.user);case _LoginError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user)?  success,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _LoginInitial() when initial != null:
return initial();case _LoginLoading() when loading != null:
return loading();case _LoginSuccess() when success != null:
return success(_that.user);case _LoginError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _LoginInitial implements LoginState {
  const _LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class _LoginLoading implements LoginState {
  const _LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class _LoginSuccess implements LoginState {
  const _LoginSuccess(this.user);
  

 final  UserEntity user;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginSuccessCopyWith<_LoginSuccess> get copyWith => __$LoginSuccessCopyWithImpl<_LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'LoginState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginSuccessCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginSuccessCopyWith(_LoginSuccess value, $Res Function(_LoginSuccess) _then) = __$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginSuccessCopyWithImpl<$Res>
    implements _$LoginSuccessCopyWith<$Res> {
  __$LoginSuccessCopyWithImpl(this._self, this._then);

  final _LoginSuccess _self;
  final $Res Function(_LoginSuccess) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_LoginSuccess(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LoginError implements LoginState {
  const _LoginError(this.failure);
  

 final  Failure failure;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginErrorCopyWith<_LoginError> get copyWith => __$LoginErrorCopyWithImpl<_LoginError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'LoginState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$LoginErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginErrorCopyWith(_LoginError value, $Res Function(_LoginError) _then) = __$LoginErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$LoginErrorCopyWithImpl<$Res>
    implements _$LoginErrorCopyWith<$Res> {
  __$LoginErrorCopyWithImpl(this._self, this._then);

  final _LoginError _self;
  final $Res Function(_LoginError) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_LoginError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RegisterInitial value)?  initial,TResult Function( _RegisterLoading value)?  loading,TResult Function( _RegisterSuccess value)?  success,TResult Function( _RegisterError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterInitial() when initial != null:
return initial(_that);case _RegisterLoading() when loading != null:
return loading(_that);case _RegisterSuccess() when success != null:
return success(_that);case _RegisterError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RegisterInitial value)  initial,required TResult Function( _RegisterLoading value)  loading,required TResult Function( _RegisterSuccess value)  success,required TResult Function( _RegisterError value)  error,}){
final _that = this;
switch (_that) {
case _RegisterInitial():
return initial(_that);case _RegisterLoading():
return loading(_that);case _RegisterSuccess():
return success(_that);case _RegisterError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RegisterInitial value)?  initial,TResult? Function( _RegisterLoading value)?  loading,TResult? Function( _RegisterSuccess value)?  success,TResult? Function( _RegisterError value)?  error,}){
final _that = this;
switch (_that) {
case _RegisterInitial() when initial != null:
return initial(_that);case _RegisterLoading() when loading != null:
return loading(_that);case _RegisterSuccess() when success != null:
return success(_that);case _RegisterError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user)?  success,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterInitial() when initial != null:
return initial();case _RegisterLoading() when loading != null:
return loading();case _RegisterSuccess() when success != null:
return success(_that.user);case _RegisterError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user)  success,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _RegisterInitial():
return initial();case _RegisterLoading():
return loading();case _RegisterSuccess():
return success(_that.user);case _RegisterError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user)?  success,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _RegisterInitial() when initial != null:
return initial();case _RegisterLoading() when loading != null:
return loading();case _RegisterSuccess() when success != null:
return success(_that.user);case _RegisterError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterInitial implements RegisterState {
  const _RegisterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.initial()';
}


}




/// @nodoc


class _RegisterLoading implements RegisterState {
  const _RegisterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.loading()';
}


}




/// @nodoc


class _RegisterSuccess implements RegisterState {
  const _RegisterSuccess(this.user);
  

 final  UserEntity user;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterSuccessCopyWith<_RegisterSuccess> get copyWith => __$RegisterSuccessCopyWithImpl<_RegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'RegisterState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class _$RegisterSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterSuccessCopyWith(_RegisterSuccess value, $Res Function(_RegisterSuccess) _then) = __$RegisterSuccessCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$RegisterSuccessCopyWithImpl<$Res>
    implements _$RegisterSuccessCopyWith<$Res> {
  __$RegisterSuccessCopyWithImpl(this._self, this._then);

  final _RegisterSuccess _self;
  final $Res Function(_RegisterSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_RegisterSuccess(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _RegisterError implements RegisterState {
  const _RegisterError(this.failure);
  

 final  Failure failure;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterErrorCopyWith<_RegisterError> get copyWith => __$RegisterErrorCopyWithImpl<_RegisterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'RegisterState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$RegisterErrorCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterErrorCopyWith(_RegisterError value, $Res Function(_RegisterError) _then) = __$RegisterErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$RegisterErrorCopyWithImpl<$Res>
    implements _$RegisterErrorCopyWith<$Res> {
  __$RegisterErrorCopyWithImpl(this._self, this._then);

  final _RegisterError _self;
  final $Res Function(_RegisterError) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_RegisterError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc
mixin _$EmailCheckState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailCheckState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailCheckState()';
}


}

/// @nodoc
class $EmailCheckStateCopyWith<$Res>  {
$EmailCheckStateCopyWith(EmailCheckState _, $Res Function(EmailCheckState) __);
}


/// Adds pattern-matching-related methods to [EmailCheckState].
extension EmailCheckStatePatterns on EmailCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EmailCheckInitial value)?  initial,TResult Function( _EmailCheckLoading value)?  loading,TResult Function( _EmailCheckSuccess value)?  success,TResult Function( _EmailCheckError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailCheckInitial() when initial != null:
return initial(_that);case _EmailCheckLoading() when loading != null:
return loading(_that);case _EmailCheckSuccess() when success != null:
return success(_that);case _EmailCheckError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EmailCheckInitial value)  initial,required TResult Function( _EmailCheckLoading value)  loading,required TResult Function( _EmailCheckSuccess value)  success,required TResult Function( _EmailCheckError value)  error,}){
final _that = this;
switch (_that) {
case _EmailCheckInitial():
return initial(_that);case _EmailCheckLoading():
return loading(_that);case _EmailCheckSuccess():
return success(_that);case _EmailCheckError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EmailCheckInitial value)?  initial,TResult? Function( _EmailCheckLoading value)?  loading,TResult? Function( _EmailCheckSuccess value)?  success,TResult? Function( _EmailCheckError value)?  error,}){
final _that = this;
switch (_that) {
case _EmailCheckInitial() when initial != null:
return initial(_that);case _EmailCheckLoading() when loading != null:
return loading(_that);case _EmailCheckSuccess() when success != null:
return success(_that);case _EmailCheckError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CheckEmailEntity result)?  success,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailCheckInitial() when initial != null:
return initial();case _EmailCheckLoading() when loading != null:
return loading();case _EmailCheckSuccess() when success != null:
return success(_that.result);case _EmailCheckError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CheckEmailEntity result)  success,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _EmailCheckInitial():
return initial();case _EmailCheckLoading():
return loading();case _EmailCheckSuccess():
return success(_that.result);case _EmailCheckError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CheckEmailEntity result)?  success,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _EmailCheckInitial() when initial != null:
return initial();case _EmailCheckLoading() when loading != null:
return loading();case _EmailCheckSuccess() when success != null:
return success(_that.result);case _EmailCheckError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _EmailCheckInitial implements EmailCheckState {
  const _EmailCheckInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailCheckInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailCheckState.initial()';
}


}




/// @nodoc


class _EmailCheckLoading implements EmailCheckState {
  const _EmailCheckLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailCheckLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailCheckState.loading()';
}


}




/// @nodoc


class _EmailCheckSuccess implements EmailCheckState {
  const _EmailCheckSuccess(this.result);
  

 final  CheckEmailEntity result;

/// Create a copy of EmailCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailCheckSuccessCopyWith<_EmailCheckSuccess> get copyWith => __$EmailCheckSuccessCopyWithImpl<_EmailCheckSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailCheckSuccess&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'EmailCheckState.success(result: $result)';
}


}

/// @nodoc
abstract mixin class _$EmailCheckSuccessCopyWith<$Res> implements $EmailCheckStateCopyWith<$Res> {
  factory _$EmailCheckSuccessCopyWith(_EmailCheckSuccess value, $Res Function(_EmailCheckSuccess) _then) = __$EmailCheckSuccessCopyWithImpl;
@useResult
$Res call({
 CheckEmailEntity result
});


$CheckEmailEntityCopyWith<$Res> get result;

}
/// @nodoc
class __$EmailCheckSuccessCopyWithImpl<$Res>
    implements _$EmailCheckSuccessCopyWith<$Res> {
  __$EmailCheckSuccessCopyWithImpl(this._self, this._then);

  final _EmailCheckSuccess _self;
  final $Res Function(_EmailCheckSuccess) _then;

/// Create a copy of EmailCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_EmailCheckSuccess(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as CheckEmailEntity,
  ));
}

/// Create a copy of EmailCheckState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckEmailEntityCopyWith<$Res> get result {
  
  return $CheckEmailEntityCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

/// @nodoc


class _EmailCheckError implements EmailCheckState {
  const _EmailCheckError(this.failure);
  

 final  Failure failure;

/// Create a copy of EmailCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailCheckErrorCopyWith<_EmailCheckError> get copyWith => __$EmailCheckErrorCopyWithImpl<_EmailCheckError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailCheckError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'EmailCheckState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$EmailCheckErrorCopyWith<$Res> implements $EmailCheckStateCopyWith<$Res> {
  factory _$EmailCheckErrorCopyWith(_EmailCheckError value, $Res Function(_EmailCheckError) _then) = __$EmailCheckErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$EmailCheckErrorCopyWithImpl<$Res>
    implements _$EmailCheckErrorCopyWith<$Res> {
  __$EmailCheckErrorCopyWithImpl(this._self, this._then);

  final _EmailCheckError _self;
  final $Res Function(_EmailCheckError) _then;

/// Create a copy of EmailCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_EmailCheckError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc
mixin _$CurrentUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState()';
}


}

/// @nodoc
class $CurrentUserStateCopyWith<$Res>  {
$CurrentUserStateCopyWith(CurrentUserState _, $Res Function(CurrentUserState) __);
}


/// Adds pattern-matching-related methods to [CurrentUserState].
extension CurrentUserStatePatterns on CurrentUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CurrentUserInitial value)?  initial,TResult Function( _CurrentUserLoading value)?  loading,TResult Function( _CurrentUserAuthenticated value)?  authenticated,TResult Function( _CurrentUserUnauthenticated value)?  unauthenticated,TResult Function( _CurrentUserError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentUserInitial() when initial != null:
return initial(_that);case _CurrentUserLoading() when loading != null:
return loading(_that);case _CurrentUserAuthenticated() when authenticated != null:
return authenticated(_that);case _CurrentUserUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _CurrentUserError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CurrentUserInitial value)  initial,required TResult Function( _CurrentUserLoading value)  loading,required TResult Function( _CurrentUserAuthenticated value)  authenticated,required TResult Function( _CurrentUserUnauthenticated value)  unauthenticated,required TResult Function( _CurrentUserError value)  error,}){
final _that = this;
switch (_that) {
case _CurrentUserInitial():
return initial(_that);case _CurrentUserLoading():
return loading(_that);case _CurrentUserAuthenticated():
return authenticated(_that);case _CurrentUserUnauthenticated():
return unauthenticated(_that);case _CurrentUserError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CurrentUserInitial value)?  initial,TResult? Function( _CurrentUserLoading value)?  loading,TResult? Function( _CurrentUserAuthenticated value)?  authenticated,TResult? Function( _CurrentUserUnauthenticated value)?  unauthenticated,TResult? Function( _CurrentUserError value)?  error,}){
final _that = this;
switch (_that) {
case _CurrentUserInitial() when initial != null:
return initial(_that);case _CurrentUserLoading() when loading != null:
return loading(_that);case _CurrentUserAuthenticated() when authenticated != null:
return authenticated(_that);case _CurrentUserUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _CurrentUserError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user)?  authenticated,TResult Function()?  unauthenticated,TResult Function( Failure failure)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentUserInitial() when initial != null:
return initial();case _CurrentUserLoading() when loading != null:
return loading();case _CurrentUserAuthenticated() when authenticated != null:
return authenticated(_that.user);case _CurrentUserUnauthenticated() when unauthenticated != null:
return unauthenticated();case _CurrentUserError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user)  authenticated,required TResult Function()  unauthenticated,required TResult Function( Failure failure)  error,}) {final _that = this;
switch (_that) {
case _CurrentUserInitial():
return initial();case _CurrentUserLoading():
return loading();case _CurrentUserAuthenticated():
return authenticated(_that.user);case _CurrentUserUnauthenticated():
return unauthenticated();case _CurrentUserError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user)?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( Failure failure)?  error,}) {final _that = this;
switch (_that) {
case _CurrentUserInitial() when initial != null:
return initial();case _CurrentUserLoading() when loading != null:
return loading();case _CurrentUserAuthenticated() when authenticated != null:
return authenticated(_that.user);case _CurrentUserUnauthenticated() when unauthenticated != null:
return unauthenticated();case _CurrentUserError() when error != null:
return error(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentUserInitial implements CurrentUserState {
  const _CurrentUserInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentUserInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.initial()';
}


}




/// @nodoc


class _CurrentUserLoading implements CurrentUserState {
  const _CurrentUserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentUserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.loading()';
}


}




/// @nodoc


class _CurrentUserAuthenticated implements CurrentUserState {
  const _CurrentUserAuthenticated(this.user);
  

 final  UserEntity user;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentUserAuthenticatedCopyWith<_CurrentUserAuthenticated> get copyWith => __$CurrentUserAuthenticatedCopyWithImpl<_CurrentUserAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentUserAuthenticated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'CurrentUserState.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class _$CurrentUserAuthenticatedCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory _$CurrentUserAuthenticatedCopyWith(_CurrentUserAuthenticated value, $Res Function(_CurrentUserAuthenticated) _then) = __$CurrentUserAuthenticatedCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$CurrentUserAuthenticatedCopyWithImpl<$Res>
    implements _$CurrentUserAuthenticatedCopyWith<$Res> {
  __$CurrentUserAuthenticatedCopyWithImpl(this._self, this._then);

  final _CurrentUserAuthenticated _self;
  final $Res Function(_CurrentUserAuthenticated) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_CurrentUserAuthenticated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _CurrentUserUnauthenticated implements CurrentUserState {
  const _CurrentUserUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentUserUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.unauthenticated()';
}


}




/// @nodoc


class _CurrentUserError implements CurrentUserState {
  const _CurrentUserError(this.failure);
  

 final  Failure failure;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentUserErrorCopyWith<_CurrentUserError> get copyWith => __$CurrentUserErrorCopyWithImpl<_CurrentUserError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentUserError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'CurrentUserState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$CurrentUserErrorCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory _$CurrentUserErrorCopyWith(_CurrentUserError value, $Res Function(_CurrentUserError) _then) = __$CurrentUserErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$CurrentUserErrorCopyWithImpl<$Res>
    implements _$CurrentUserErrorCopyWith<$Res> {
  __$CurrentUserErrorCopyWithImpl(this._self, this._then);

  final _CurrentUserError _self;
  final $Res Function(_CurrentUserError) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_CurrentUserError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on

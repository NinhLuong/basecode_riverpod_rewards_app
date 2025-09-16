// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserve_comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReserveCommentEntity {

 CommentEntity get commentEntity;
/// Create a copy of ReserveCommentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReserveCommentEntityCopyWith<ReserveCommentEntity> get copyWith => _$ReserveCommentEntityCopyWithImpl<ReserveCommentEntity>(this as ReserveCommentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReserveCommentEntity&&(identical(other.commentEntity, commentEntity) || other.commentEntity == commentEntity));
}


@override
int get hashCode => Object.hash(runtimeType,commentEntity);

@override
String toString() {
  return 'ReserveCommentEntity(commentEntity: $commentEntity)';
}


}

/// @nodoc
abstract mixin class $ReserveCommentEntityCopyWith<$Res>  {
  factory $ReserveCommentEntityCopyWith(ReserveCommentEntity value, $Res Function(ReserveCommentEntity) _then) = _$ReserveCommentEntityCopyWithImpl;
@useResult
$Res call({
 CommentEntity commentEntity
});


$CommentEntityCopyWith<$Res> get commentEntity;

}
/// @nodoc
class _$ReserveCommentEntityCopyWithImpl<$Res>
    implements $ReserveCommentEntityCopyWith<$Res> {
  _$ReserveCommentEntityCopyWithImpl(this._self, this._then);

  final ReserveCommentEntity _self;
  final $Res Function(ReserveCommentEntity) _then;

/// Create a copy of ReserveCommentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commentEntity = null,}) {
  return _then(_self.copyWith(
commentEntity: null == commentEntity ? _self.commentEntity : commentEntity // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}
/// Create a copy of ReserveCommentEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res> get commentEntity {
  
  return $CommentEntityCopyWith<$Res>(_self.commentEntity, (value) {
    return _then(_self.copyWith(commentEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReserveCommentEntity].
extension ReserveCommentEntityPatterns on ReserveCommentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReserveCommentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReserveCommentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReserveCommentEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReserveCommentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReserveCommentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReserveCommentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommentEntity commentEntity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReserveCommentEntity() when $default != null:
return $default(_that.commentEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommentEntity commentEntity)  $default,) {final _that = this;
switch (_that) {
case _ReserveCommentEntity():
return $default(_that.commentEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommentEntity commentEntity)?  $default,) {final _that = this;
switch (_that) {
case _ReserveCommentEntity() when $default != null:
return $default(_that.commentEntity);case _:
  return null;

}
}

}

/// @nodoc


class _ReserveCommentEntity extends ReserveCommentEntity {
  const _ReserveCommentEntity({required this.commentEntity}): super._();
  

@override final  CommentEntity commentEntity;

/// Create a copy of ReserveCommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReserveCommentEntityCopyWith<_ReserveCommentEntity> get copyWith => __$ReserveCommentEntityCopyWithImpl<_ReserveCommentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentEntity&&(identical(other.commentEntity, commentEntity) || other.commentEntity == commentEntity));
}


@override
int get hashCode => Object.hash(runtimeType,commentEntity);

@override
String toString() {
  return 'ReserveCommentEntity(commentEntity: $commentEntity)';
}


}

/// @nodoc
abstract mixin class _$ReserveCommentEntityCopyWith<$Res> implements $ReserveCommentEntityCopyWith<$Res> {
  factory _$ReserveCommentEntityCopyWith(_ReserveCommentEntity value, $Res Function(_ReserveCommentEntity) _then) = __$ReserveCommentEntityCopyWithImpl;
@override @useResult
$Res call({
 CommentEntity commentEntity
});


@override $CommentEntityCopyWith<$Res> get commentEntity;

}
/// @nodoc
class __$ReserveCommentEntityCopyWithImpl<$Res>
    implements _$ReserveCommentEntityCopyWith<$Res> {
  __$ReserveCommentEntityCopyWithImpl(this._self, this._then);

  final _ReserveCommentEntity _self;
  final $Res Function(_ReserveCommentEntity) _then;

/// Create a copy of ReserveCommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commentEntity = null,}) {
  return _then(_ReserveCommentEntity(
commentEntity: null == commentEntity ? _self.commentEntity : commentEntity // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}

/// Create a copy of ReserveCommentEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<$Res> get commentEntity {
  
  return $CommentEntityCopyWith<$Res>(_self.commentEntity, (value) {
    return _then(_self.copyWith(commentEntity: value));
  });
}
}

/// @nodoc
mixin _$CommentEntity {

 String get id; String get taskId; String get text;
/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<CommentEntity> get copyWith => _$CommentEntityCopyWithImpl<CommentEntity>(this as CommentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,id,taskId,text);

@override
String toString() {
  return 'CommentEntity(id: $id, taskId: $taskId, text: $text)';
}


}

/// @nodoc
abstract mixin class $CommentEntityCopyWith<$Res>  {
  factory $CommentEntityCopyWith(CommentEntity value, $Res Function(CommentEntity) _then) = _$CommentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String taskId, String text
});




}
/// @nodoc
class _$CommentEntityCopyWithImpl<$Res>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._self, this._then);

  final CommentEntity _self;
  final $Res Function(CommentEntity) _then;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? taskId = null,Object? text = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentEntity].
extension CommentEntityPatterns on CommentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentEntity value)  $default,){
final _that = this;
switch (_that) {
case _CommentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String taskId,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
return $default(_that.id,_that.taskId,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String taskId,  String text)  $default,) {final _that = this;
switch (_that) {
case _CommentEntity():
return $default(_that.id,_that.taskId,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String taskId,  String text)?  $default,) {final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
return $default(_that.id,_that.taskId,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _CommentEntity extends CommentEntity {
  const _CommentEntity({required this.id, required this.taskId, required this.text}): super._();
  

@override final  String id;
@override final  String taskId;
@override final  String text;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentEntityCopyWith<_CommentEntity> get copyWith => __$CommentEntityCopyWithImpl<_CommentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,id,taskId,text);

@override
String toString() {
  return 'CommentEntity(id: $id, taskId: $taskId, text: $text)';
}


}

/// @nodoc
abstract mixin class _$CommentEntityCopyWith<$Res> implements $CommentEntityCopyWith<$Res> {
  factory _$CommentEntityCopyWith(_CommentEntity value, $Res Function(_CommentEntity) _then) = __$CommentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String taskId, String text
});




}
/// @nodoc
class __$CommentEntityCopyWithImpl<$Res>
    implements _$CommentEntityCopyWith<$Res> {
  __$CommentEntityCopyWithImpl(this._self, this._then);

  final _CommentEntity _self;
  final $Res Function(_CommentEntity) _then;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? taskId = null,Object? text = null,}) {
  return _then(_CommentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

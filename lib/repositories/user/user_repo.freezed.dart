// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponse {

 List<User> get users;
/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseCopyWith<UserResponse> get copyWith => _$UserResponseCopyWithImpl<UserResponse>(this as UserResponse, _$identity);

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponse&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'UserResponse(users: $users)';
}


}

/// @nodoc
abstract mixin class $UserResponseCopyWith<$Res>  {
  factory $UserResponseCopyWith(UserResponse value, $Res Function(UserResponse) _then) = _$UserResponseCopyWithImpl;
@useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class _$UserResponseCopyWithImpl<$Res>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._self, this._then);

  final UserResponse _self;
  final $Res Function(UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserResponse].
extension UserResponsePatterns on UserResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<User> users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<User> users)  $default,) {final _that = this;
switch (_that) {
case _UserResponse():
return $default(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<User> users)?  $default,) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponse implements UserResponse {
   _UserResponse({required final  List<User> users}): _users = users;
  factory _UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

 final  List<User> _users;
@override List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseCopyWith<_UserResponse> get copyWith => __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponse&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserResponse(users: $users)';
}


}

/// @nodoc
abstract mixin class _$UserResponseCopyWith<$Res> implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(_UserResponse value, $Res Function(_UserResponse) _then) = __$UserResponseCopyWithImpl;
@override @useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class __$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(this._self, this._then);

  final _UserResponse _self;
  final $Res Function(_UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_UserResponse(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}


/// @nodoc
mixin _$User {

 int get id; String get login; String get firstName; String get lastName; String get email; String get imageUrl; bool get activated; String get langKey; String get createdBy; DateTime get createdDate; String get lastModifiedBy; DateTime get lastModifiedDate; List<String> get authorities;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.activated, activated) || other.activated == activated)&&(identical(other.langKey, langKey) || other.langKey == langKey)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.lastModifiedBy, lastModifiedBy) || other.lastModifiedBy == lastModifiedBy)&&(identical(other.lastModifiedDate, lastModifiedDate) || other.lastModifiedDate == lastModifiedDate)&&const DeepCollectionEquality().equals(other.authorities, authorities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,firstName,lastName,email,imageUrl,activated,langKey,createdBy,createdDate,lastModifiedBy,lastModifiedDate,const DeepCollectionEquality().hash(authorities));

@override
String toString() {
  return 'User(id: $id, login: $login, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, activated: $activated, langKey: $langKey, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, authorities: $authorities)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int id, String login, String firstName, String lastName, String email, String imageUrl, bool activated, String langKey, String createdBy, DateTime createdDate, String lastModifiedBy, DateTime lastModifiedDate, List<String> authorities
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? login = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? imageUrl = null,Object? activated = null,Object? langKey = null,Object? createdBy = null,Object? createdDate = null,Object? lastModifiedBy = null,Object? lastModifiedDate = null,Object? authorities = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,activated: null == activated ? _self.activated : activated // ignore: cast_nullable_to_non_nullable
as bool,langKey: null == langKey ? _self.langKey : langKey // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastModifiedBy: null == lastModifiedBy ? _self.lastModifiedBy : lastModifiedBy // ignore: cast_nullable_to_non_nullable
as String,lastModifiedDate: null == lastModifiedDate ? _self.lastModifiedDate : lastModifiedDate // ignore: cast_nullable_to_non_nullable
as DateTime,authorities: null == authorities ? _self.authorities : authorities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String login,  String firstName,  String lastName,  String email,  String imageUrl,  bool activated,  String langKey,  String createdBy,  DateTime createdDate,  String lastModifiedBy,  DateTime lastModifiedDate,  List<String> authorities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.login,_that.firstName,_that.lastName,_that.email,_that.imageUrl,_that.activated,_that.langKey,_that.createdBy,_that.createdDate,_that.lastModifiedBy,_that.lastModifiedDate,_that.authorities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String login,  String firstName,  String lastName,  String email,  String imageUrl,  bool activated,  String langKey,  String createdBy,  DateTime createdDate,  String lastModifiedBy,  DateTime lastModifiedDate,  List<String> authorities)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.login,_that.firstName,_that.lastName,_that.email,_that.imageUrl,_that.activated,_that.langKey,_that.createdBy,_that.createdDate,_that.lastModifiedBy,_that.lastModifiedDate,_that.authorities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String login,  String firstName,  String lastName,  String email,  String imageUrl,  bool activated,  String langKey,  String createdBy,  DateTime createdDate,  String lastModifiedBy,  DateTime lastModifiedDate,  List<String> authorities)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.login,_that.firstName,_that.lastName,_that.email,_that.imageUrl,_that.activated,_that.langKey,_that.createdBy,_that.createdDate,_that.lastModifiedBy,_that.lastModifiedDate,_that.authorities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
   _User({required this.id, required this.login, required this.firstName, required this.lastName, required this.email, required this.imageUrl, required this.activated, required this.langKey, required this.createdBy, required this.createdDate, required this.lastModifiedBy, required this.lastModifiedDate, required final  List<String> authorities}): _authorities = authorities;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int id;
@override final  String login;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String imageUrl;
@override final  bool activated;
@override final  String langKey;
@override final  String createdBy;
@override final  DateTime createdDate;
@override final  String lastModifiedBy;
@override final  DateTime lastModifiedDate;
 final  List<String> _authorities;
@override List<String> get authorities {
  if (_authorities is EqualUnmodifiableListView) return _authorities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_authorities);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.activated, activated) || other.activated == activated)&&(identical(other.langKey, langKey) || other.langKey == langKey)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.lastModifiedBy, lastModifiedBy) || other.lastModifiedBy == lastModifiedBy)&&(identical(other.lastModifiedDate, lastModifiedDate) || other.lastModifiedDate == lastModifiedDate)&&const DeepCollectionEquality().equals(other._authorities, _authorities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,firstName,lastName,email,imageUrl,activated,langKey,createdBy,createdDate,lastModifiedBy,lastModifiedDate,const DeepCollectionEquality().hash(_authorities));

@override
String toString() {
  return 'User(id: $id, login: $login, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, activated: $activated, langKey: $langKey, createdBy: $createdBy, createdDate: $createdDate, lastModifiedBy: $lastModifiedBy, lastModifiedDate: $lastModifiedDate, authorities: $authorities)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int id, String login, String firstName, String lastName, String email, String imageUrl, bool activated, String langKey, String createdBy, DateTime createdDate, String lastModifiedBy, DateTime lastModifiedDate, List<String> authorities
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? login = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? imageUrl = null,Object? activated = null,Object? langKey = null,Object? createdBy = null,Object? createdDate = null,Object? lastModifiedBy = null,Object? lastModifiedDate = null,Object? authorities = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,activated: null == activated ? _self.activated : activated // ignore: cast_nullable_to_non_nullable
as bool,langKey: null == langKey ? _self.langKey : langKey // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastModifiedBy: null == lastModifiedBy ? _self.lastModifiedBy : lastModifiedBy // ignore: cast_nullable_to_non_nullable
as String,lastModifiedDate: null == lastModifiedDate ? _self.lastModifiedDate : lastModifiedDate // ignore: cast_nullable_to_non_nullable
as DateTime,authorities: null == authorities ? _self._authorities : authorities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on

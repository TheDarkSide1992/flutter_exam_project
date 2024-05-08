// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToLoginDto _$ClientWantsToLoginDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToLoginDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLoginDto {
  String get eventType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLoginDtoCopyWith<ClientWantsToLoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLoginDtoCopyWith<$Res> {
  factory $ClientWantsToLoginDtoCopyWith(ClientWantsToLoginDto value,
          $Res Function(ClientWantsToLoginDto) then) =
      _$ClientWantsToLoginDtoCopyWithImpl<$Res, ClientWantsToLoginDto>;
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class _$ClientWantsToLoginDtoCopyWithImpl<$Res,
        $Val extends ClientWantsToLoginDto>
    implements $ClientWantsToLoginDtoCopyWith<$Res> {
  _$ClientWantsToLoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToLoginDtoImplCopyWith<$Res>
    implements $ClientWantsToLoginDtoCopyWith<$Res> {
  factory _$$ClientWantsToLoginDtoImplCopyWith(
          _$ClientWantsToLoginDtoImpl value,
          $Res Function(_$ClientWantsToLoginDtoImpl) then) =
      __$$ClientWantsToLoginDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class __$$ClientWantsToLoginDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsToLoginDtoCopyWithImpl<$Res,
        _$ClientWantsToLoginDtoImpl>
    implements _$$ClientWantsToLoginDtoImplCopyWith<$Res> {
  __$$ClientWantsToLoginDtoImplCopyWithImpl(_$ClientWantsToLoginDtoImpl _value,
      $Res Function(_$ClientWantsToLoginDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ClientWantsToLoginDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLoginDtoImpl implements _ClientWantsToLoginDto {
  const _$ClientWantsToLoginDtoImpl(
      {required this.eventType, required this.email, required this.password});

  factory _$ClientWantsToLoginDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLoginDtoImplFromJson(json);

  @override
  final String eventType;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ClientWantsToLoginDto(eventType: $eventType, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLoginDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLoginDtoImplCopyWith<_$ClientWantsToLoginDtoImpl>
      get copyWith => __$$ClientWantsToLoginDtoImplCopyWithImpl<
          _$ClientWantsToLoginDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLoginDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLoginDto implements ClientWantsToLoginDto {
  const factory _ClientWantsToLoginDto(
      {required final String eventType,
      required final String email,
      required final String password}) = _$ClientWantsToLoginDtoImpl;

  factory _ClientWantsToLoginDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLoginDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLoginDtoImplCopyWith<_$ClientWantsToLoginDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToLogoutDto _$ClientWantsToLogoutDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToLogoutDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogoutDto {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLogoutDtoCopyWith<ClientWantsToLogoutDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLogoutDtoCopyWith<$Res> {
  factory $ClientWantsToLogoutDtoCopyWith(ClientWantsToLogoutDto value,
          $Res Function(ClientWantsToLogoutDto) then) =
      _$ClientWantsToLogoutDtoCopyWithImpl<$Res, ClientWantsToLogoutDto>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ClientWantsToLogoutDtoCopyWithImpl<$Res,
        $Val extends ClientWantsToLogoutDto>
    implements $ClientWantsToLogoutDtoCopyWith<$Res> {
  _$ClientWantsToLogoutDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToLogoutDtoImplCopyWith<$Res>
    implements $ClientWantsToLogoutDtoCopyWith<$Res> {
  factory _$$ClientWantsToLogoutDtoImplCopyWith(
          _$ClientWantsToLogoutDtoImpl value,
          $Res Function(_$ClientWantsToLogoutDtoImpl) then) =
      __$$ClientWantsToLogoutDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ClientWantsToLogoutDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsToLogoutDtoCopyWithImpl<$Res,
        _$ClientWantsToLogoutDtoImpl>
    implements _$$ClientWantsToLogoutDtoImplCopyWith<$Res> {
  __$$ClientWantsToLogoutDtoImplCopyWithImpl(
      _$ClientWantsToLogoutDtoImpl _value,
      $Res Function(_$ClientWantsToLogoutDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToLogoutDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLogoutDtoImpl implements _ClientWantsToLogoutDto {
  const _$ClientWantsToLogoutDtoImpl({required this.eventType});

  factory _$ClientWantsToLogoutDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogoutDtoImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToLogoutDto(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogoutDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogoutDtoImplCopyWith<_$ClientWantsToLogoutDtoImpl>
      get copyWith => __$$ClientWantsToLogoutDtoImplCopyWithImpl<
          _$ClientWantsToLogoutDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLogoutDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLogoutDto implements ClientWantsToLogoutDto {
  const factory _ClientWantsToLogoutDto({required final String eventType}) =
      _$ClientWantsToLogoutDtoImpl;

  factory _ClientWantsToLogoutDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogoutDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLogoutDtoImplCopyWith<_$ClientWantsToLogoutDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsAccountInfoDto _$ClientWantsAccountInfoDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsAccountInfoDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsAccountInfoDto {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsAccountInfoDtoCopyWith<ClientWantsAccountInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsAccountInfoDtoCopyWith<$Res> {
  factory $ClientWantsAccountInfoDtoCopyWith(ClientWantsAccountInfoDto value,
          $Res Function(ClientWantsAccountInfoDto) then) =
      _$ClientWantsAccountInfoDtoCopyWithImpl<$Res, ClientWantsAccountInfoDto>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ClientWantsAccountInfoDtoCopyWithImpl<$Res,
        $Val extends ClientWantsAccountInfoDto>
    implements $ClientWantsAccountInfoDtoCopyWith<$Res> {
  _$ClientWantsAccountInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsAccountInfoDtoImplCopyWith<$Res>
    implements $ClientWantsAccountInfoDtoCopyWith<$Res> {
  factory _$$ClientWantsAccountInfoDtoImplCopyWith(
          _$ClientWantsAccountInfoDtoImpl value,
          $Res Function(_$ClientWantsAccountInfoDtoImpl) then) =
      __$$ClientWantsAccountInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ClientWantsAccountInfoDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsAccountInfoDtoCopyWithImpl<$Res,
        _$ClientWantsAccountInfoDtoImpl>
    implements _$$ClientWantsAccountInfoDtoImplCopyWith<$Res> {
  __$$ClientWantsAccountInfoDtoImplCopyWithImpl(
      _$ClientWantsAccountInfoDtoImpl _value,
      $Res Function(_$ClientWantsAccountInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsAccountInfoDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsAccountInfoDtoImpl implements _ClientWantsAccountInfoDto {
  const _$ClientWantsAccountInfoDtoImpl({required this.eventType});

  factory _$ClientWantsAccountInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsAccountInfoDtoImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsAccountInfoDto(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsAccountInfoDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsAccountInfoDtoImplCopyWith<_$ClientWantsAccountInfoDtoImpl>
      get copyWith => __$$ClientWantsAccountInfoDtoImplCopyWithImpl<
          _$ClientWantsAccountInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsAccountInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsAccountInfoDto implements ClientWantsAccountInfoDto {
  const factory _ClientWantsAccountInfoDto({required final String eventType}) =
      _$ClientWantsAccountInfoDtoImpl;

  factory _ClientWantsAccountInfoDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsAccountInfoDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsAccountInfoDtoImplCopyWith<_$ClientWantsAccountInfoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToAuthenticateWithJwtDto
    _$ClientWantsToAuthenticateWithJwtDtoFromJson(Map<String, dynamic> json) {
  return _ClientWantsToAuthenticateWithJwtDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToAuthenticateWithJwtDto {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToAuthenticateWithJwtDtoCopyWith<
          ClientWantsToAuthenticateWithJwtDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToAuthenticateWithJwtDtoCopyWith<$Res> {
  factory $ClientWantsToAuthenticateWithJwtDtoCopyWith(
          ClientWantsToAuthenticateWithJwtDto value,
          $Res Function(ClientWantsToAuthenticateWithJwtDto) then) =
      _$ClientWantsToAuthenticateWithJwtDtoCopyWithImpl<$Res,
          ClientWantsToAuthenticateWithJwtDto>;
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class _$ClientWantsToAuthenticateWithJwtDtoCopyWithImpl<$Res,
        $Val extends ClientWantsToAuthenticateWithJwtDto>
    implements $ClientWantsToAuthenticateWithJwtDtoCopyWith<$Res> {
  _$ClientWantsToAuthenticateWithJwtDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToAuthenticateWithJwtDtoImplCopyWith<$Res>
    implements $ClientWantsToAuthenticateWithJwtDtoCopyWith<$Res> {
  factory _$$ClientWantsToAuthenticateWithJwtDtoImplCopyWith(
          _$ClientWantsToAuthenticateWithJwtDtoImpl value,
          $Res Function(_$ClientWantsToAuthenticateWithJwtDtoImpl) then) =
      __$$ClientWantsToAuthenticateWithJwtDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class __$$ClientWantsToAuthenticateWithJwtDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsToAuthenticateWithJwtDtoCopyWithImpl<$Res,
        _$ClientWantsToAuthenticateWithJwtDtoImpl>
    implements _$$ClientWantsToAuthenticateWithJwtDtoImplCopyWith<$Res> {
  __$$ClientWantsToAuthenticateWithJwtDtoImplCopyWithImpl(
      _$ClientWantsToAuthenticateWithJwtDtoImpl _value,
      $Res Function(_$ClientWantsToAuthenticateWithJwtDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_$ClientWantsToAuthenticateWithJwtDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToAuthenticateWithJwtDtoImpl
    implements _ClientWantsToAuthenticateWithJwtDto {
  const _$ClientWantsToAuthenticateWithJwtDtoImpl(
      {required this.eventType, required this.jwt});

  factory _$ClientWantsToAuthenticateWithJwtDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToAuthenticateWithJwtDtoImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;

  @override
  String toString() {
    return 'ClientWantsToAuthenticateWithJwtDto(eventType: $eventType, jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToAuthenticateWithJwtDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToAuthenticateWithJwtDtoImplCopyWith<
          _$ClientWantsToAuthenticateWithJwtDtoImpl>
      get copyWith => __$$ClientWantsToAuthenticateWithJwtDtoImplCopyWithImpl<
          _$ClientWantsToAuthenticateWithJwtDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToAuthenticateWithJwtDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToAuthenticateWithJwtDto
    implements ClientWantsToAuthenticateWithJwtDto {
  const factory _ClientWantsToAuthenticateWithJwtDto(
      {required final String eventType,
      required final String jwt}) = _$ClientWantsToAuthenticateWithJwtDtoImpl;

  factory _ClientWantsToAuthenticateWithJwtDto.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToAuthenticateWithJwtDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToAuthenticateWithJwtDtoImplCopyWith<
          _$ClientWantsToAuthenticateWithJwtDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerLogsInUser _$ServerLogsInUserFromJson(Map<String, dynamic> json) {
  return _ServerLogsInUser.fromJson(json);
}

/// @nodoc
mixin _$ServerLogsInUser {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerLogsInUserCopyWith<ServerLogsInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerLogsInUserCopyWith<$Res> {
  factory $ServerLogsInUserCopyWith(
          ServerLogsInUser value, $Res Function(ServerLogsInUser) then) =
      _$ServerLogsInUserCopyWithImpl<$Res, ServerLogsInUser>;
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class _$ServerLogsInUserCopyWithImpl<$Res, $Val extends ServerLogsInUser>
    implements $ServerLogsInUserCopyWith<$Res> {
  _$ServerLogsInUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerLogsInUserImplCopyWith<$Res>
    implements $ServerLogsInUserCopyWith<$Res> {
  factory _$$ServerLogsInUserImplCopyWith(_$ServerLogsInUserImpl value,
          $Res Function(_$ServerLogsInUserImpl) then) =
      __$$ServerLogsInUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class __$$ServerLogsInUserImplCopyWithImpl<$Res>
    extends _$ServerLogsInUserCopyWithImpl<$Res, _$ServerLogsInUserImpl>
    implements _$$ServerLogsInUserImplCopyWith<$Res> {
  __$$ServerLogsInUserImplCopyWithImpl(_$ServerLogsInUserImpl _value,
      $Res Function(_$ServerLogsInUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_$ServerLogsInUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerLogsInUserImpl implements _ServerLogsInUser {
  const _$ServerLogsInUserImpl({required this.eventType, required this.jwt});

  factory _$ServerLogsInUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerLogsInUserImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;

  @override
  String toString() {
    return 'ServerLogsInUser(eventType: $eventType, jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerLogsInUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerLogsInUserImplCopyWith<_$ServerLogsInUserImpl> get copyWith =>
      __$$ServerLogsInUserImplCopyWithImpl<_$ServerLogsInUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerLogsInUserImplToJson(
      this,
    );
  }
}

abstract class _ServerLogsInUser implements ServerLogsInUser {
  const factory _ServerLogsInUser(
      {required final String eventType,
      required final String jwt}) = _$ServerLogsInUserImpl;

  factory _ServerLogsInUser.fromJson(Map<String, dynamic> json) =
      _$ServerLogsInUserImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ServerLogsInUserImplCopyWith<_$ServerLogsInUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerLogsoutUser _$ServerLogsoutUserFromJson(Map<String, dynamic> json) {
  return _ServerLogsoutUser.fromJson(json);
}

/// @nodoc
mixin _$ServerLogsoutUser {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerLogsoutUserCopyWith<ServerLogsoutUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerLogsoutUserCopyWith<$Res> {
  factory $ServerLogsoutUserCopyWith(
          ServerLogsoutUser value, $Res Function(ServerLogsoutUser) then) =
      _$ServerLogsoutUserCopyWithImpl<$Res, ServerLogsoutUser>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ServerLogsoutUserCopyWithImpl<$Res, $Val extends ServerLogsoutUser>
    implements $ServerLogsoutUserCopyWith<$Res> {
  _$ServerLogsoutUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerLogsoutUserImplCopyWith<$Res>
    implements $ServerLogsoutUserCopyWith<$Res> {
  factory _$$ServerLogsoutUserImplCopyWith(_$ServerLogsoutUserImpl value,
          $Res Function(_$ServerLogsoutUserImpl) then) =
      __$$ServerLogsoutUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ServerLogsoutUserImplCopyWithImpl<$Res>
    extends _$ServerLogsoutUserCopyWithImpl<$Res, _$ServerLogsoutUserImpl>
    implements _$$ServerLogsoutUserImplCopyWith<$Res> {
  __$$ServerLogsoutUserImplCopyWithImpl(_$ServerLogsoutUserImpl _value,
      $Res Function(_$ServerLogsoutUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ServerLogsoutUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerLogsoutUserImpl implements _ServerLogsoutUser {
  const _$ServerLogsoutUserImpl({required this.eventType});

  factory _$ServerLogsoutUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerLogsoutUserImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ServerLogsoutUser(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerLogsoutUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerLogsoutUserImplCopyWith<_$ServerLogsoutUserImpl> get copyWith =>
      __$$ServerLogsoutUserImplCopyWithImpl<_$ServerLogsoutUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerLogsoutUserImplToJson(
      this,
    );
  }
}

abstract class _ServerLogsoutUser implements ServerLogsoutUser {
  const factory _ServerLogsoutUser({required final String eventType}) =
      _$ServerLogsoutUserImpl;

  factory _ServerLogsoutUser.fromJson(Map<String, dynamic> json) =
      _$ServerLogsoutUserImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ServerLogsoutUserImplCopyWith<_$ServerLogsoutUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerSendsAccountData _$ServerSendsAccountDataFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsAccountData.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsAccountData {
  String get eventType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get realname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsAccountDataCopyWith<ServerSendsAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsAccountDataCopyWith<$Res> {
  factory $ServerSendsAccountDataCopyWith(ServerSendsAccountData value,
          $Res Function(ServerSendsAccountData) then) =
      _$ServerSendsAccountDataCopyWithImpl<$Res, ServerSendsAccountData>;
  @useResult
  $Res call({String eventType, String email, String city, String realname});
}

/// @nodoc
class _$ServerSendsAccountDataCopyWithImpl<$Res,
        $Val extends ServerSendsAccountData>
    implements $ServerSendsAccountDataCopyWith<$Res> {
  _$ServerSendsAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? city = null,
    Object? realname = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      realname: null == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsAccountDataImplCopyWith<$Res>
    implements $ServerSendsAccountDataCopyWith<$Res> {
  factory _$$ServerSendsAccountDataImplCopyWith(
          _$ServerSendsAccountDataImpl value,
          $Res Function(_$ServerSendsAccountDataImpl) then) =
      __$$ServerSendsAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String email, String city, String realname});
}

/// @nodoc
class __$$ServerSendsAccountDataImplCopyWithImpl<$Res>
    extends _$ServerSendsAccountDataCopyWithImpl<$Res,
        _$ServerSendsAccountDataImpl>
    implements _$$ServerSendsAccountDataImplCopyWith<$Res> {
  __$$ServerSendsAccountDataImplCopyWithImpl(
      _$ServerSendsAccountDataImpl _value,
      $Res Function(_$ServerSendsAccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? city = null,
    Object? realname = null,
  }) {
    return _then(_$ServerSendsAccountDataImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      realname: null == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsAccountDataImpl implements _ServerSendsAccountData {
  const _$ServerSendsAccountDataImpl(
      {required this.eventType,
      required this.email,
      required this.city,
      required this.realname});

  factory _$ServerSendsAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsAccountDataImplFromJson(json);

  @override
  final String eventType;
  @override
  final String email;
  @override
  final String city;
  @override
  final String realname;

  @override
  String toString() {
    return 'ServerSendsAccountData(eventType: $eventType, email: $email, city: $city, realname: $realname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsAccountDataImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.realname, realname) ||
                other.realname == realname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventType, email, city, realname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsAccountDataImplCopyWith<_$ServerSendsAccountDataImpl>
      get copyWith => __$$ServerSendsAccountDataImplCopyWithImpl<
          _$ServerSendsAccountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsAccountDataImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsAccountData implements ServerSendsAccountData {
  const factory _ServerSendsAccountData(
      {required final String eventType,
      required final String email,
      required final String city,
      required final String realname}) = _$ServerSendsAccountDataImpl;

  factory _ServerSendsAccountData.fromJson(Map<String, dynamic> json) =
      _$ServerSendsAccountDataImpl.fromJson;

  @override
  String get eventType;
  @override
  String get email;
  @override
  String get city;
  @override
  String get realname;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsAccountDataImplCopyWith<_$ServerSendsAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerAuthenticatesUserFromJwt _$ServerAuthenticatesUserFromJwtFromJson(
    Map<String, dynamic> json) {
  return _ServerAuthenticatesUserFromJwt.fromJson(json);
}

/// @nodoc
mixin _$ServerAuthenticatesUserFromJwt {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAuthenticatesUserFromJwtCopyWith<ServerAuthenticatesUserFromJwt>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAuthenticatesUserFromJwtCopyWith<$Res> {
  factory $ServerAuthenticatesUserFromJwtCopyWith(
          ServerAuthenticatesUserFromJwt value,
          $Res Function(ServerAuthenticatesUserFromJwt) then) =
      _$ServerAuthenticatesUserFromJwtCopyWithImpl<$Res,
          ServerAuthenticatesUserFromJwt>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ServerAuthenticatesUserFromJwtCopyWithImpl<$Res,
        $Val extends ServerAuthenticatesUserFromJwt>
    implements $ServerAuthenticatesUserFromJwtCopyWith<$Res> {
  _$ServerAuthenticatesUserFromJwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerAuthenticatesUserFromJwtImplCopyWith<$Res>
    implements $ServerAuthenticatesUserFromJwtCopyWith<$Res> {
  factory _$$ServerAuthenticatesUserFromJwtImplCopyWith(
          _$ServerAuthenticatesUserFromJwtImpl value,
          $Res Function(_$ServerAuthenticatesUserFromJwtImpl) then) =
      __$$ServerAuthenticatesUserFromJwtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ServerAuthenticatesUserFromJwtImplCopyWithImpl<$Res>
    extends _$ServerAuthenticatesUserFromJwtCopyWithImpl<$Res,
        _$ServerAuthenticatesUserFromJwtImpl>
    implements _$$ServerAuthenticatesUserFromJwtImplCopyWith<$Res> {
  __$$ServerAuthenticatesUserFromJwtImplCopyWithImpl(
      _$ServerAuthenticatesUserFromJwtImpl _value,
      $Res Function(_$ServerAuthenticatesUserFromJwtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ServerAuthenticatesUserFromJwtImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthenticatesUserFromJwtImpl
    implements _ServerAuthenticatesUserFromJwt {
  const _$ServerAuthenticatesUserFromJwtImpl({required this.eventType});

  factory _$ServerAuthenticatesUserFromJwtImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerAuthenticatesUserFromJwtImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ServerAuthenticatesUserFromJwt(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthenticatesUserFromJwtImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthenticatesUserFromJwtImplCopyWith<
          _$ServerAuthenticatesUserFromJwtImpl>
      get copyWith => __$$ServerAuthenticatesUserFromJwtImplCopyWithImpl<
          _$ServerAuthenticatesUserFromJwtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthenticatesUserFromJwtImplToJson(
      this,
    );
  }
}

abstract class _ServerAuthenticatesUserFromJwt
    implements ServerAuthenticatesUserFromJwt {
  const factory _ServerAuthenticatesUserFromJwt(
      {required final String eventType}) = _$ServerAuthenticatesUserFromJwtImpl;

  factory _ServerAuthenticatesUserFromJwt.fromJson(Map<String, dynamic> json) =
      _$ServerAuthenticatesUserFromJwtImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ServerAuthenticatesUserFromJwtImplCopyWith<
          _$ServerAuthenticatesUserFromJwtImpl>
      get copyWith => throw _privateConstructorUsedError;
}
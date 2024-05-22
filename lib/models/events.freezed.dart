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

ClientWantsBasicRoomStatusDto _$ClientWantsBasicRoomStatusDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsBasicRoomStatusDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsBasicRoomStatusDto {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsBasicRoomStatusDtoCopyWith<ClientWantsBasicRoomStatusDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsBasicRoomStatusDtoCopyWith<$Res> {
  factory $ClientWantsBasicRoomStatusDtoCopyWith(
          ClientWantsBasicRoomStatusDto value,
          $Res Function(ClientWantsBasicRoomStatusDto) then) =
      _$ClientWantsBasicRoomStatusDtoCopyWithImpl<$Res,
          ClientWantsBasicRoomStatusDto>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ClientWantsBasicRoomStatusDtoCopyWithImpl<$Res,
        $Val extends ClientWantsBasicRoomStatusDto>
    implements $ClientWantsBasicRoomStatusDtoCopyWith<$Res> {
  _$ClientWantsBasicRoomStatusDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$ClientWantsBasicRoomStatusDtoImplCopyWith<$Res>
    implements $ClientWantsBasicRoomStatusDtoCopyWith<$Res> {
  factory _$$ClientWantsBasicRoomStatusDtoImplCopyWith(
          _$ClientWantsBasicRoomStatusDtoImpl value,
          $Res Function(_$ClientWantsBasicRoomStatusDtoImpl) then) =
      __$$ClientWantsBasicRoomStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ClientWantsBasicRoomStatusDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsBasicRoomStatusDtoCopyWithImpl<$Res,
        _$ClientWantsBasicRoomStatusDtoImpl>
    implements _$$ClientWantsBasicRoomStatusDtoImplCopyWith<$Res> {
  __$$ClientWantsBasicRoomStatusDtoImplCopyWithImpl(
      _$ClientWantsBasicRoomStatusDtoImpl _value,
      $Res Function(_$ClientWantsBasicRoomStatusDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsBasicRoomStatusDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsBasicRoomStatusDtoImpl
    implements _ClientWantsBasicRoomStatusDto {
  const _$ClientWantsBasicRoomStatusDtoImpl({required this.eventType});

  factory _$ClientWantsBasicRoomStatusDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsBasicRoomStatusDtoImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsBasicRoomStatusDto(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsBasicRoomStatusDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsBasicRoomStatusDtoImplCopyWith<
          _$ClientWantsBasicRoomStatusDtoImpl>
      get copyWith => __$$ClientWantsBasicRoomStatusDtoImplCopyWithImpl<
          _$ClientWantsBasicRoomStatusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsBasicRoomStatusDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsBasicRoomStatusDto
    implements ClientWantsBasicRoomStatusDto {
  const factory _ClientWantsBasicRoomStatusDto(
      {required final String eventType}) = _$ClientWantsBasicRoomStatusDtoImpl;

  factory _ClientWantsBasicRoomStatusDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsBasicRoomStatusDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsBasicRoomStatusDtoImplCopyWith<
          _$ClientWantsBasicRoomStatusDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToOpenOrCloseAllWindowsInRoomDto
    _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoFromJson(
        Map<String, dynamic> json) {
  return _ClientWantsToOpenOrCloseAllWindowsInRoomDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToOpenOrCloseAllWindowsInRoomDto {
  String get eventType => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWith<
          ClientWantsToOpenOrCloseAllWindowsInRoomDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWith<$Res> {
  factory $ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWith(
          ClientWantsToOpenOrCloseAllWindowsInRoomDto value,
          $Res Function(ClientWantsToOpenOrCloseAllWindowsInRoomDto) then) =
      _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWithImpl<$Res,
          ClientWantsToOpenOrCloseAllWindowsInRoomDto>;
  @useResult
  $Res call({String eventType, int id, bool open});
}

/// @nodoc
class _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWithImpl<$Res,
        $Val extends ClientWantsToOpenOrCloseAllWindowsInRoomDto>
    implements $ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWith<$Res> {
  _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? id = null,
    Object? open = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWith<$Res>
    implements $ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWith<$Res> {
  factory _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWith(
          _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl value,
          $Res Function(_$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl)
              then) =
      __$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, int id, bool open});
}

/// @nodoc
class __$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoCopyWithImpl<$Res,
        _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl>
    implements
        _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWith<$Res> {
  __$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWithImpl(
      _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl _value,
      $Res Function(_$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? id = null,
    Object? open = null,
  }) {
    return _then(_$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl
    implements _ClientWantsToOpenOrCloseAllWindowsInRoomDto {
  const _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl(
      {required this.eventType, required this.id, required this.open});

  factory _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplFromJson(json);

  @override
  final String eventType;
  @override
  final int id;
  @override
  final bool open;

  @override
  String toString() {
    return 'ClientWantsToOpenOrCloseAllWindowsInRoomDto(eventType: $eventType, id: $id, open: $open)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.open, open) || other.open == open));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, id, open);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWith<
          _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl>
      get copyWith =>
          __$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWithImpl<
                  _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToOpenOrCloseAllWindowsInRoomDto
    implements ClientWantsToOpenOrCloseAllWindowsInRoomDto {
  const factory _ClientWantsToOpenOrCloseAllWindowsInRoomDto(
          {required final String eventType,
          required final int id,
          required final bool open}) =
      _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl;

  factory _ClientWantsToOpenOrCloseAllWindowsInRoomDto.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  int get id;
  @override
  bool get open;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplCopyWith<
          _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsDetailedRoomDto _$ClientWantsDetailedRoomDtoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsDetailedRoomDto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsDetailedRoomDto {
  String get eventType => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsDetailedRoomDtoCopyWith<ClientWantsDetailedRoomDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsDetailedRoomDtoCopyWith<$Res> {
  factory $ClientWantsDetailedRoomDtoCopyWith(ClientWantsDetailedRoomDto value,
          $Res Function(ClientWantsDetailedRoomDto) then) =
      _$ClientWantsDetailedRoomDtoCopyWithImpl<$Res,
          ClientWantsDetailedRoomDto>;
  @useResult
  $Res call({String eventType, int roomId});
}

/// @nodoc
class _$ClientWantsDetailedRoomDtoCopyWithImpl<$Res,
        $Val extends ClientWantsDetailedRoomDto>
    implements $ClientWantsDetailedRoomDtoCopyWith<$Res> {
  _$ClientWantsDetailedRoomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? roomId = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsDetailedRoomDtoImplCopyWith<$Res>
    implements $ClientWantsDetailedRoomDtoCopyWith<$Res> {
  factory _$$ClientWantsDetailedRoomDtoImplCopyWith(
          _$ClientWantsDetailedRoomDtoImpl value,
          $Res Function(_$ClientWantsDetailedRoomDtoImpl) then) =
      __$$ClientWantsDetailedRoomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, int roomId});
}

/// @nodoc
class __$$ClientWantsDetailedRoomDtoImplCopyWithImpl<$Res>
    extends _$ClientWantsDetailedRoomDtoCopyWithImpl<$Res,
        _$ClientWantsDetailedRoomDtoImpl>
    implements _$$ClientWantsDetailedRoomDtoImplCopyWith<$Res> {
  __$$ClientWantsDetailedRoomDtoImplCopyWithImpl(
      _$ClientWantsDetailedRoomDtoImpl _value,
      $Res Function(_$ClientWantsDetailedRoomDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? roomId = null,
  }) {
    return _then(_$ClientWantsDetailedRoomDtoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsDetailedRoomDtoImpl implements _ClientWantsDetailedRoomDto {
  const _$ClientWantsDetailedRoomDtoImpl(
      {required this.eventType, required this.roomId});

  factory _$ClientWantsDetailedRoomDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsDetailedRoomDtoImplFromJson(json);

  @override
  final String eventType;
  @override
  final int roomId;

  @override
  String toString() {
    return 'ClientWantsDetailedRoomDto(eventType: $eventType, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsDetailedRoomDtoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsDetailedRoomDtoImplCopyWith<_$ClientWantsDetailedRoomDtoImpl>
      get copyWith => __$$ClientWantsDetailedRoomDtoImplCopyWithImpl<
          _$ClientWantsDetailedRoomDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsDetailedRoomDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsDetailedRoomDto
    implements ClientWantsDetailedRoomDto {
  const factory _ClientWantsDetailedRoomDto(
      {required final String eventType,
      required final int roomId}) = _$ClientWantsDetailedRoomDtoImpl;

  factory _ClientWantsDetailedRoomDto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsDetailedRoomDtoImpl.fromJson;

  @override
  String get eventType;
  @override
  int get roomId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsDetailedRoomDtoImplCopyWith<_$ClientWantsDetailedRoomDtoImpl>
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

ServerReturnsBasicRoomStatus _$ServerReturnsBasicRoomStatusFromJson(
    Map<String, dynamic> json) {
  return _ServerReturnsBasicRoomStatus.fromJson(json);
}

/// @nodoc
mixin _$ServerReturnsBasicRoomStatus {
  String get eventType => throw _privateConstructorUsedError;
  List<BasicRoomStatus> get basicRoomListData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerReturnsBasicRoomStatusCopyWith<ServerReturnsBasicRoomStatus>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerReturnsBasicRoomStatusCopyWith<$Res> {
  factory $ServerReturnsBasicRoomStatusCopyWith(
          ServerReturnsBasicRoomStatus value,
          $Res Function(ServerReturnsBasicRoomStatus) then) =
      _$ServerReturnsBasicRoomStatusCopyWithImpl<$Res,
          ServerReturnsBasicRoomStatus>;
  @useResult
  $Res call({String eventType, List<BasicRoomStatus> basicRoomListData});
}

/// @nodoc
class _$ServerReturnsBasicRoomStatusCopyWithImpl<$Res,
        $Val extends ServerReturnsBasicRoomStatus>
    implements $ServerReturnsBasicRoomStatusCopyWith<$Res> {
  _$ServerReturnsBasicRoomStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? basicRoomListData = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      basicRoomListData: null == basicRoomListData
          ? _value.basicRoomListData
          : basicRoomListData // ignore: cast_nullable_to_non_nullable
              as List<BasicRoomStatus>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerReturnsBasicRoomStatusImplCopyWith<$Res>
    implements $ServerReturnsBasicRoomStatusCopyWith<$Res> {
  factory _$$ServerReturnsBasicRoomStatusImplCopyWith(
          _$ServerReturnsBasicRoomStatusImpl value,
          $Res Function(_$ServerReturnsBasicRoomStatusImpl) then) =
      __$$ServerReturnsBasicRoomStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, List<BasicRoomStatus> basicRoomListData});
}

/// @nodoc
class __$$ServerReturnsBasicRoomStatusImplCopyWithImpl<$Res>
    extends _$ServerReturnsBasicRoomStatusCopyWithImpl<$Res,
        _$ServerReturnsBasicRoomStatusImpl>
    implements _$$ServerReturnsBasicRoomStatusImplCopyWith<$Res> {
  __$$ServerReturnsBasicRoomStatusImplCopyWithImpl(
      _$ServerReturnsBasicRoomStatusImpl _value,
      $Res Function(_$ServerReturnsBasicRoomStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? basicRoomListData = null,
  }) {
    return _then(_$ServerReturnsBasicRoomStatusImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      basicRoomListData: null == basicRoomListData
          ? _value._basicRoomListData
          : basicRoomListData // ignore: cast_nullable_to_non_nullable
              as List<BasicRoomStatus>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerReturnsBasicRoomStatusImpl
    implements _ServerReturnsBasicRoomStatus {
  const _$ServerReturnsBasicRoomStatusImpl(
      {required this.eventType,
      required final List<BasicRoomStatus> basicRoomListData})
      : _basicRoomListData = basicRoomListData;

  factory _$ServerReturnsBasicRoomStatusImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerReturnsBasicRoomStatusImplFromJson(json);

  @override
  final String eventType;
  final List<BasicRoomStatus> _basicRoomListData;
  @override
  List<BasicRoomStatus> get basicRoomListData {
    if (_basicRoomListData is EqualUnmodifiableListView)
      return _basicRoomListData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basicRoomListData);
  }

  @override
  String toString() {
    return 'ServerReturnsBasicRoomStatus(eventType: $eventType, basicRoomListData: $basicRoomListData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerReturnsBasicRoomStatusImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._basicRoomListData, _basicRoomListData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_basicRoomListData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerReturnsBasicRoomStatusImplCopyWith<
          _$ServerReturnsBasicRoomStatusImpl>
      get copyWith => __$$ServerReturnsBasicRoomStatusImplCopyWithImpl<
          _$ServerReturnsBasicRoomStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerReturnsBasicRoomStatusImplToJson(
      this,
    );
  }
}

abstract class _ServerReturnsBasicRoomStatus
    implements ServerReturnsBasicRoomStatus {
  const factory _ServerReturnsBasicRoomStatus(
          {required final String eventType,
          required final List<BasicRoomStatus> basicRoomListData}) =
      _$ServerReturnsBasicRoomStatusImpl;

  factory _ServerReturnsBasicRoomStatus.fromJson(Map<String, dynamic> json) =
      _$ServerReturnsBasicRoomStatusImpl.fromJson;

  @override
  String get eventType;
  @override
  List<BasicRoomStatus> get basicRoomListData;
  @override
  @JsonKey(ignore: true)
  _$$ServerReturnsBasicRoomStatusImplCopyWith<
          _$ServerReturnsBasicRoomStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerReturnsNewMotorStatusForAllMotorsInRoom
    _$ServerReturnsNewMotorStatusForAllMotorsInRoomFromJson(
        Map<String, dynamic> json) {
  return _ServerReturnsNewMotorStatusForAllMotorsInRoom.fromJson(json);
}

/// @nodoc
mixin _$ServerReturnsNewMotorStatusForAllMotorsInRoom {
  String get eventType => throw _privateConstructorUsedError;
  List<MotorModel> get motors => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWith<
          ServerReturnsNewMotorStatusForAllMotorsInRoom>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWith<$Res> {
  factory $ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWith(
          ServerReturnsNewMotorStatusForAllMotorsInRoom value,
          $Res Function(ServerReturnsNewMotorStatusForAllMotorsInRoom) then) =
      _$ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWithImpl<$Res,
          ServerReturnsNewMotorStatusForAllMotorsInRoom>;
  @useResult
  $Res call({String eventType, List<MotorModel> motors, String message});
}

/// @nodoc
class _$ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWithImpl<$Res,
        $Val extends ServerReturnsNewMotorStatusForAllMotorsInRoom>
    implements $ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWith<$Res> {
  _$ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? motors = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      motors: null == motors
          ? _value.motors
          : motors // ignore: cast_nullable_to_non_nullable
              as List<MotorModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWith<
        $Res>
    implements $ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWith<$Res> {
  factory _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWith(
          _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl value,
          $Res Function(_$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl)
              then) =
      __$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, List<MotorModel> motors, String message});
}

/// @nodoc
class __$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWithImpl<$Res>
    extends _$ServerReturnsNewMotorStatusForAllMotorsInRoomCopyWithImpl<$Res,
        _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl>
    implements
        _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWith<$Res> {
  __$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWithImpl(
      _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl _value,
      $Res Function(_$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? motors = null,
    Object? message = null,
  }) {
    return _then(_$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      motors: null == motors
          ? _value._motors
          : motors // ignore: cast_nullable_to_non_nullable
              as List<MotorModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl
    implements _ServerReturnsNewMotorStatusForAllMotorsInRoom {
  const _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl(
      {required this.eventType,
      required final List<MotorModel> motors,
      required this.message})
      : _motors = motors;

  factory _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplFromJson(json);

  @override
  final String eventType;
  final List<MotorModel> _motors;
  @override
  List<MotorModel> get motors {
    if (_motors is EqualUnmodifiableListView) return _motors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_motors);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'ServerReturnsNewMotorStatusForAllMotorsInRoom(eventType: $eventType, motors: $motors, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._motors, _motors) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_motors), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWith<
          _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl>
      get copyWith =>
          __$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWithImpl<
                  _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplToJson(
      this,
    );
  }
}

abstract class _ServerReturnsNewMotorStatusForAllMotorsInRoom
    implements ServerReturnsNewMotorStatusForAllMotorsInRoom {
  const factory _ServerReturnsNewMotorStatusForAllMotorsInRoom(
          {required final String eventType,
          required final List<MotorModel> motors,
          required final String message}) =
      _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl;

  factory _ServerReturnsNewMotorStatusForAllMotorsInRoom.fromJson(
          Map<String, dynamic> json) =
      _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl.fromJson;

  @override
  String get eventType;
  @override
  List<MotorModel> get motors;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplCopyWith<
          _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerReturnsDetailedRoomToUser _$ServerReturnsDetailedRoomToUserFromJson(
    Map<String, dynamic> json) {
  return _ServerReturnsDetailedRoomToUser.fromJson(json);
}

/// @nodoc
mixin _$ServerReturnsDetailedRoomToUser {
  String get eventType => throw _privateConstructorUsedError;
  DetailedRoomModel get room => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerReturnsDetailedRoomToUserCopyWith<ServerReturnsDetailedRoomToUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerReturnsDetailedRoomToUserCopyWith<$Res> {
  factory $ServerReturnsDetailedRoomToUserCopyWith(
          ServerReturnsDetailedRoomToUser value,
          $Res Function(ServerReturnsDetailedRoomToUser) then) =
      _$ServerReturnsDetailedRoomToUserCopyWithImpl<$Res,
          ServerReturnsDetailedRoomToUser>;
  @useResult
  $Res call({String eventType, DetailedRoomModel room});
}

/// @nodoc
class _$ServerReturnsDetailedRoomToUserCopyWithImpl<$Res,
        $Val extends ServerReturnsDetailedRoomToUser>
    implements $ServerReturnsDetailedRoomToUserCopyWith<$Res> {
  _$ServerReturnsDetailedRoomToUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? room = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as DetailedRoomModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerReturnsDetailedRoomToUserImplCopyWith<$Res>
    implements $ServerReturnsDetailedRoomToUserCopyWith<$Res> {
  factory _$$ServerReturnsDetailedRoomToUserImplCopyWith(
          _$ServerReturnsDetailedRoomToUserImpl value,
          $Res Function(_$ServerReturnsDetailedRoomToUserImpl) then) =
      __$$ServerReturnsDetailedRoomToUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, DetailedRoomModel room});
}

/// @nodoc
class __$$ServerReturnsDetailedRoomToUserImplCopyWithImpl<$Res>
    extends _$ServerReturnsDetailedRoomToUserCopyWithImpl<$Res,
        _$ServerReturnsDetailedRoomToUserImpl>
    implements _$$ServerReturnsDetailedRoomToUserImplCopyWith<$Res> {
  __$$ServerReturnsDetailedRoomToUserImplCopyWithImpl(
      _$ServerReturnsDetailedRoomToUserImpl _value,
      $Res Function(_$ServerReturnsDetailedRoomToUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? room = null,
  }) {
    return _then(_$ServerReturnsDetailedRoomToUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as DetailedRoomModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerReturnsDetailedRoomToUserImpl
    implements _ServerReturnsDetailedRoomToUser {
  const _$ServerReturnsDetailedRoomToUserImpl(
      {required this.eventType, required this.room});

  factory _$ServerReturnsDetailedRoomToUserImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerReturnsDetailedRoomToUserImplFromJson(json);

  @override
  final String eventType;
  @override
  final DetailedRoomModel room;

  @override
  String toString() {
    return 'ServerReturnsDetailedRoomToUser(eventType: $eventType, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerReturnsDetailedRoomToUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.room, room) || other.room == room));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerReturnsDetailedRoomToUserImplCopyWith<
          _$ServerReturnsDetailedRoomToUserImpl>
      get copyWith => __$$ServerReturnsDetailedRoomToUserImplCopyWithImpl<
          _$ServerReturnsDetailedRoomToUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerReturnsDetailedRoomToUserImplToJson(
      this,
    );
  }
}

abstract class _ServerReturnsDetailedRoomToUser
    implements ServerReturnsDetailedRoomToUser {
  const factory _ServerReturnsDetailedRoomToUser(
          {required final String eventType,
          required final DetailedRoomModel room}) =
      _$ServerReturnsDetailedRoomToUserImpl;

  factory _ServerReturnsDetailedRoomToUser.fromJson(Map<String, dynamic> json) =
      _$ServerReturnsDetailedRoomToUserImpl.fromJson;

  @override
  String get eventType;
  @override
  DetailedRoomModel get room;
  @override
  @JsonKey(ignore: true)
  _$$ServerReturnsDetailedRoomToUserImplCopyWith<
          _$ServerReturnsDetailedRoomToUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

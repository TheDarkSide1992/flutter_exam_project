import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.g.dart';
part 'events.freezed.dart';

sealed class BaseEvent {}

//dart run build_runner build

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}
abstract class ServerEvent extends BaseEvent {
  Map<String, dynamic> toJson();

  static ServerEvent fromJson(event) {
    final type = event['eventType'];

    return switch (type) {
      ServerLogsInUser.name => ServerLogsInUser.fromJson(event),
      ServerLogsoutUser.name => ServerLogsoutUser.fromJson(event),
      ServerSendsAccountData.name =>
          ServerSendsAccountData.fromJson(event),
      ServerAuthenticatesUserFromJwt.name =>
          ServerAuthenticatesUserFromJwt.fromJson(event),
      _ => throw "Unknown event type: $type in $event"
    };
  }
}

//CLIENT
@freezed
class ClientWantsToLoginDto extends ClientEvent
    with _$ClientWantsToLoginDto {
  static const String name = "ClientWantsToLoginDto";
  const factory ClientWantsToLoginDto({
    required String eventType,
    required String email,
    required String password,
  }) = _ClientWantsToLoginDto;

  factory ClientWantsToLoginDto.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToLoginDtoFromJson(json);
}

@freezed
class ClientWantsToLogoutDto extends ClientEvent
    with _$ClientWantsToLogoutDto {
  static const String name = "ClientWantsToLogoutDto";
  const factory ClientWantsToLogoutDto({
    required String eventType,
  }) = _ClientWantsToLogoutDto;

  factory ClientWantsToLogoutDto.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToLogoutDtoFromJson(json);
}
@freezed
class ClientWantsAccountInfoDto extends ClientEvent
    with _$ClientWantsAccountInfoDto {
  static const String name = "ClientWantsAccountInfoDto";
  const factory ClientWantsAccountInfoDto({
    required String eventType,
  }) = _ClientWantsAccountInfoDto;

  factory ClientWantsAccountInfoDto.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsAccountInfoDtoFromJson(json);
}

@freezed
class ClientWantsToAuthenticateWithJwtDto extends ClientEvent
    with _$ClientWantsToAuthenticateWithJwtDto {
  static const String name = "ClientWantsToAuthenticateWithJwtDto";
  const factory ClientWantsToAuthenticateWithJwtDto({
    required String eventType,
    required String jwt,
  }) = _ClientWantsToAuthenticateWithJwtDto;

  factory ClientWantsToAuthenticateWithJwtDto.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToAuthenticateWithJwtDtoFromJson(json);
}



//SERVER
@freezed
class ServerLogsInUser extends ServerEvent
    with _$ServerLogsInUser {
  static const String name = "ServerLogsInUser";
  const factory ServerLogsInUser({
    required String eventType,
    required String jwt,
  }) = _ServerLogsInUser;

  factory ServerLogsInUser.fromJson(
      Map<String, Object?> json) =>
      _$ServerLogsInUserFromJson(json);
}

@freezed
class ServerLogsoutUser extends ServerEvent
    with _$ServerLogsoutUser {
  static const String name = "ServerLogsoutUser";
  const factory ServerLogsoutUser({
    required String eventType,
  }) = _ServerLogsoutUser;

  factory ServerLogsoutUser.fromJson(
      Map<String, Object?> json) =>
      _$ServerLogsoutUserFromJson(json);
}
@freezed
class ServerSendsAccountData extends ServerEvent
    with _$ServerSendsAccountData {
  static const String name = "ServerSendsAccountData";
  const factory ServerSendsAccountData({
    required String eventType,
    required String email,
    required String city,
    required String realname,
  }) = _ServerSendsAccountData;

  factory ServerSendsAccountData.fromJson(
      Map<String, Object?> json) =>
      _$ServerSendsAccountDataFromJson(json);
}

@freezed
class ServerAuthenticatesUserFromJwt extends ServerEvent
    with _$ServerAuthenticatesUserFromJwt {
  static const String name = "ServerAuthenticatesUserFromJwt";
  const factory ServerAuthenticatesUserFromJwt({
    required String eventType,
  }) = _ServerAuthenticatesUserFromJwt;

  factory ServerAuthenticatesUserFromJwt.fromJson(
      Map<String, Object?> json) =>
      _$ServerAuthenticatesUserFromJwtFromJson(json);
}


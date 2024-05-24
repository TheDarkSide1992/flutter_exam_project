// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToLoginDtoImpl _$$ClientWantsToLoginDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLoginDtoImpl(
      eventType: json['eventType'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ClientWantsToLoginDtoImplToJson(
        _$ClientWantsToLoginDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'email': instance.email,
      'password': instance.password,
    };

_$ClientWantsToLogoutDtoImpl _$$ClientWantsToLogoutDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLogoutDtoImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsToLogoutDtoImplToJson(
        _$ClientWantsToLogoutDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ClientWantsAccountInfoDtoImpl _$$ClientWantsAccountInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsAccountInfoDtoImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsAccountInfoDtoImplToJson(
        _$ClientWantsAccountInfoDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ClientWantsToAuthenticateWithJwtDtoImpl
    _$$ClientWantsToAuthenticateWithJwtDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToAuthenticateWithJwtDtoImpl(
          eventType: json['eventType'] as String,
          jwt: json['jwt'] as String,
        );

Map<String, dynamic> _$$ClientWantsToAuthenticateWithJwtDtoImplToJson(
        _$ClientWantsToAuthenticateWithJwtDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
    };

_$ClientWantsBasicRoomStatusDtoImpl
    _$$ClientWantsBasicRoomStatusDtoImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsBasicRoomStatusDtoImpl(
          eventType: json['eventType'] as String,
        );

Map<String, dynamic> _$$ClientWantsBasicRoomStatusDtoImplToJson(
        _$ClientWantsBasicRoomStatusDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl
    _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl(
          eventType: json['eventType'] as String,
          id: (json['id'] as num).toInt(),
          open: json['open'] as bool,
        );

Map<String, dynamic> _$$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImplToJson(
        _$ClientWantsToOpenOrCloseAllWindowsInRoomDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'id': instance.id,
      'open': instance.open,
    };

_$ClientWantsDetailedRoomDtoImpl _$$ClientWantsDetailedRoomDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsDetailedRoomDtoImpl(
      eventType: json['eventType'] as String,
      roomId: (json['roomId'] as num).toInt(),
    );

Map<String, dynamic> _$$ClientWantsDetailedRoomDtoImplToJson(
        _$ClientWantsDetailedRoomDtoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'roomId': instance.roomId,
    };

_$ServerLogsInUserImpl _$$ServerLogsInUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerLogsInUserImpl(
      eventType: json['eventType'] as String,
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$$ServerLogsInUserImplToJson(
        _$ServerLogsInUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
    };

_$ServerLogsoutUserImpl _$$ServerLogsoutUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerLogsoutUserImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ServerLogsoutUserImplToJson(
        _$ServerLogsoutUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ServerSendsAccountDataImpl _$$ServerSendsAccountDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsAccountDataImpl(
      eventType: json['eventType'] as String,
      email: json['email'] as String,
      city: json['city'] as String,
      realname: json['realname'] as String,
    );

Map<String, dynamic> _$$ServerSendsAccountDataImplToJson(
        _$ServerSendsAccountDataImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'email': instance.email,
      'city': instance.city,
      'realname': instance.realname,
    };

_$ServerAuthenticatesUserFromJwtImpl
    _$$ServerAuthenticatesUserFromJwtImplFromJson(Map<String, dynamic> json) =>
        _$ServerAuthenticatesUserFromJwtImpl(
          eventType: json['eventType'] as String,
        );

Map<String, dynamic> _$$ServerAuthenticatesUserFromJwtImplToJson(
        _$ServerAuthenticatesUserFromJwtImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ServerReturnsBasicRoomStatusImpl _$$ServerReturnsBasicRoomStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerReturnsBasicRoomStatusImpl(
      eventType: json['eventType'] as String,
      basicRoomListData: (json['basicRoomListData'] as List<dynamic>)
          .map((e) => BasicRoomStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerReturnsBasicRoomStatusImplToJson(
        _$ServerReturnsBasicRoomStatusImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'basicRoomListData': instance.basicRoomListData,
    };

_$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl
    _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplFromJson(
            Map<String, dynamic> json) =>
        _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl(
          eventType: json['eventType'] as String,
          motors: (json['motors'] as List<dynamic>)
              .map((e) => MotorModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          message: json['message'] as String,
        );

Map<String, dynamic> _$$ServerReturnsNewMotorStatusForAllMotorsInRoomImplToJson(
        _$ServerReturnsNewMotorStatusForAllMotorsInRoomImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'motors': instance.motors,
      'message': instance.message,
    };

_$ServerReturnsDetailedRoomToUserImpl
    _$$ServerReturnsDetailedRoomToUserImplFromJson(Map<String, dynamic> json) =>
        _$ServerReturnsDetailedRoomToUserImpl(
          eventType: json['eventType'] as String,
          room:
              DetailedRoomModel.fromJson(json['room'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ServerReturnsDetailedRoomToUserImplToJson(
        _$ServerReturnsDetailedRoomToUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'room': instance.room,
    };

_$ServerReturnsNewestSensorDataImpl
    _$$ServerReturnsNewestSensorDataImplFromJson(Map<String, dynamic> json) =>
        _$ServerReturnsNewestSensorDataImpl(
          eventType: json['eventType'] as String,
          data: SensorModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ServerReturnsNewestSensorDataImplToJson(
        _$ServerReturnsNewestSensorDataImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'data': instance.data,
    };

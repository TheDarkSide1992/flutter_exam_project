

import 'package:flutter/material.dart';
import 'package:flutter_exam_project/models/BasicRoomStatus.dart';

import '../../models/MotorModel.dart';
import '../../models/SensorModel.dart';

@immutable
abstract class DeviceState {}

class DeviceInitial extends DeviceState {}

class DevicDataLoaded extends DeviceState {
  final List<BasicRoomStatus>? simpleDataLoadList;

  DevicDataLoaded({required this.simpleDataLoadList});
}

class DeviceWindowStatus extends DeviceState {
  final bool? open;
  final List<MotorModel>? motors;
  DeviceWindowStatus({required this.open, required this.motors});
}

class DetailedRoom extends DeviceState{
  final int? roomId;
  final String? name;
  final List<SensorModel>? sensors;
  final List<MotorModel>? motors;
  final bool? open;

  DetailedRoom({required this.roomId, required this.name, required this.sensors, required this.motors, required this.open});
}

class DeviceSigOut extends DeviceState {}

class DataError extends DeviceState {}


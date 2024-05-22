

import 'package:flutter/material.dart';
import 'package:flutter_exam_project/models/BasicRoomStatus.dart';

import '../../models/MotorModel.dart';

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

class DeviceSigOut extends DeviceState {}

class DataError extends DeviceState {}


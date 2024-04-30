

import 'package:flutter/material.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';

@immutable
abstract class DeviceState {}

class DeviceInitial extends DeviceState {}

class DevicDataLoaded extends DeviceState {
  final List<SimpleDataDTO>? simpleDataLoadList;

  DevicDataLoaded({required this.simpleDataLoadList});
}

class DeviceSigOut extends DeviceState {}

class DataError extends DeviceState {}


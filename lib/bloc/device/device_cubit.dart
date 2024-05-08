import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/bloc/device/device_state.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';

import '../../utils/data_source.dart';

class DeviceCubit extends Cubit<DeviceState> {
  DeviceCubit(this.dataSource) : super(DeviceInitial());

  final DataSource dataSource;

  Future<void> getDeviceData() async {
    List<SimpleDataDTO> data = [];

    try {
      data = await dataSource.getSimpleData();
    } catch (e) {
      print(e);
      emit(DataError());
    }

    emit(DevicDataLoaded(simpleDataLoadList: data));
  }

  Future<void> RemoweDeviceList() async {
    emit(DeviceSigOut());
  }
}

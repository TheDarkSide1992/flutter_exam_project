import 'dart:async';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/cubit/device/device_state.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';

import '../../utils/data_source.dart';


class DeviceCubit extends Cubit<DeviceState> {
  DeviceCubit(this.dataSource) : super(DeviceInitial());

  final DataSource dataSource;

  Future<void> getDeviceData() async {
    List<SimpleDataDTO> data = [];

    //TODO implement it so it call api to get single profile call datasource
    //data = (await dataSource.getSimpleData()) as List<SimpleDataDTO>?;

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

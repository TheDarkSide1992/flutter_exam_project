
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_exam_project/models/models.dart';


abstract class DataSource {
  Future<SimpleDataDTO> getSimpleData();
 /** Future<UserDataDTO> getUserData();

  Future<RoomDataDTO> getRoomData();

  Future<DeviceDataDTO> getDeviceData();

  Future<SensorDataDTO> getSensorData();

  Future<TempDataDTO> getTempData();

  Future<HumDataDTO> getHumData();

  Future<AqDataDTO> getAqData();*/

}

class FakeDataSource implements DataSource {
  @override
  Future<SimpleDataDTO> getSimpleData() async {
    final json = await rootBundle.loadString("assets/simple_data.json");
    return SimpleDataDTO.fromJson(jsonDecode(json));
  }

  /**@override
  Future<UserDataDTO> getUserData() async {
    final json = await rootBundle.loadString("assets/user_data.json");
    return UserDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<RoomDataDTO> getRoomData() async {
    final json = await rootBundle.loadString("assets/room_data.json");
    return RoomDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<DeviceDataDTO> getDeviceData() async {
    final json = await rootBundle.loadString("assets/device_data.json");
    return DeviceDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<AqDataDTO> getAqData() async {
    final json = await rootBundle.loadString("assets/aq_data.json");
    return AqDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<HumDataDTO> getHumData() async {
    final json = await rootBundle.loadString("assets/hum_data.json");
    return HumDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<SensorDataDTO> getSensorData() async {
    final json = await rootBundle.loadString("assets/sensor_data.json");
    return SensorDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<TempDataDTO> getTempData() async {
    final json = await rootBundle.loadString("assets/temp_data.json");
    return TempDataDTO.fromJson(jsonDecode(json));
  }*/

}

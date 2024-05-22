import 'MotorModel.dart';
import 'SensorModel.dart';

class DetailedRoomModel{
  int? roomId;
  String? name;
  List<SensorModel>? sensors;
  List<MotorModel>? motors;

  DetailedRoomModel({
    required this.roomId,
    required this.name,
    required this.sensors,
    required this.motors,
  });

  DetailedRoomModel.fromJson(Map<String, dynamic> json){

    roomId = (json["roomId"] as num).toInt();
    name = (json["name"]);
    sensors = (json["sensors"] as List<SensorModel>);
    motors = (json["motors"] as List<MotorModel>);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["roomId"] = roomId;
    _data["name"] = name;
    _data["sensors"] = sensors;
    _data["motors"] = motors;
    return _data;
  }
}
/**class UserDataDTO{
  int? userID;
  String? email;
  String? city;

  UserDataDTO.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    email = json['email'];
    city = json['city'];
  }
}

class RoomDataDTO{
  int? roomID;
  int? userID;
  String? roomName;

  RoomDataDTO.fromJson(Map<String, dynamic> json) {
    roomID = json['roomID'];
    userID = json['userID'];
    roomName = json['RoomName'];
  }
}

class DeviceDataDTO{
  int? deviceID;
  int? dataID;

  DeviceDataDTO.fromJson(Map<String, dynamic> json){
    deviceID = json['deviceID'];
    dataID = json['dataID'];
  }
}

class SensorDataDTO{
  int? dataID;
  int? tempID;
  int? humID;
  int? aqId;

  SensorDataDTO.fromJson(Map<String, dynamic> json) {
    dataID = json['dataID'];
    tempID = json['tempID'];
    humID = json['humID'];
    aqId = json['aqId'];
  }
}

class TempDataDTO{
  int? tempID;
  DateTime? date;
  double? temprature;

  TempDataDTO.fromJson(Map<String, dynamic> json) {
    tempID = json['tempID'];
    date = json['date'];
    temprature = json['temprature'];
  }
}

class HumDataDTO{
  int? humID;
  DateTime? date;
  double? humidity;

  HumDataDTO.fromJson(Map<String, dynamic> json) {
    humID = json['humID'];
    date = json['date'];
    humidity = json['humidity'];
  }
}

class AqDataDTO{
  int? aqID;
  DateTime? date;
  double? airquality;

  AqDataDTO.fromJson(Map<String, dynamic> json) {
    aqID = json['aqID'];
    date = json['date'];
    airquality = json['airquality'];
  }
}*/

class SimpleDataDTO{
  int? roomID;
  //DateTime? date;
  String? date;
  double? temp;
  double? hum;
  double? airquality;
  String? roomName;

  SimpleDataDTO({
    required this.roomID,
    required this.date,
    required this.temp,
    required this.hum,
    required this.airquality,
    required this.roomName
  });

  SimpleDataDTO.fromJson(Map<String, dynamic> json){

    roomID = (json["roomID"] as num).toInt();
    temp = (json["temprature"] as num).toDouble();
    date = (json["date"]);
    hum = (json["humidity"] as num).toDouble();
    airquality = (json["airquality"] as num).toDouble();
    roomName = (json["RoomName"]);

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["roomID"] = roomID;
    _data["temprature"] = temp;
    _data["date"] = date;
    _data["humidity"] = hum;
    _data["airquality"] = airquality;
    _data["RoomName"] = roomName;
    return _data;
  }
}
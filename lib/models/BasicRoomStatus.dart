class BasicRoomStatus{
  int? roomId;
  double? basicCurrentTemp;
  double? basicCurrentHum;
  double? basicCurrentAq;
  String? basicHumSetting;
  String? basicAqSetting;
  String? basicTempSetting;
  String? roomName;
  String? basicWindowStatus;

  BasicRoomStatus({
    required this.roomId,
    required this.roomName,
    required this.basicWindowStatus,
    required this.basicTempSetting,
    required this.basicAqSetting,
    required this.basicHumSetting,
    required this.basicCurrentHum,
    required this.basicCurrentTemp,
    required this.basicCurrentAq,
  });

  BasicRoomStatus.fromJson(Map<String, dynamic> json){

    roomId = (json["roomId"] as num).toInt();
    roomName = (json["roomName"]);
    basicWindowStatus = (json["basicWindowStatus"]);
    basicTempSetting = (json["basicTempSetting"]);
    basicAqSetting = (json["basicAqSetting"]);
    basicHumSetting = (json["basicHumSetting"]);
    basicCurrentHum = (json["basicCurrentHum"] as num).toDouble();
    basicCurrentTemp = (json["basicCurrentTemp"] as num).toDouble();
    basicCurrentAq = (json["basicCurrentAq"] as num).toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["roomId"] = roomId;
    _data["roomName"] = roomName;
    _data["basicWindowStatus"] = basicWindowStatus;
    _data["basicTempSetting"] = basicTempSetting;
    _data["basicAqSetting"] = basicAqSetting;
    _data["basicHumSetting"] = basicHumSetting;
    _data["basicCurrentHum"] = basicCurrentHum;
    _data["basicCurrentTemp"] = basicCurrentTemp;
    _data["basicCurrentAq"] = basicCurrentAq;
    return _data;
  }
}
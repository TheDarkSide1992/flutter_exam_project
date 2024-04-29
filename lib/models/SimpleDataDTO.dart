class SimpleDataDTO{
  int? roomId;
  String? date;
  double? temp;
  double? hum;
  double? airquality;
  String? roomName;

  SimpleDataDTO({
    required this.roomId,
    required this.date,
    required this.temp,
    required this.hum,
    required this.airquality,
    required this.roomName
  });

  SimpleDataDTO.fromJson(Map<String, dynamic> json){

    roomId = (json["roomId"] as num).toInt();
    date = (json["date"]);
    roomName = (json["roomName"]);
    date = (json["date"]);
    temp = (json["temp"] as num).toDouble();
    hum = (json["hum"] as num).toDouble();
    airquality = (json["airquality"] as num).toDouble();

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["roomId"] = roomId;
    _data["date"] = date;
    _data["roomName"] = roomName;
    _data["date"] = date;
    _data["temp"] = temp;
    _data["hum"] = hum;
    _data["airquality"] = airquality;
    return _data;
  }
}
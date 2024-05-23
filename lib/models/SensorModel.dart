class SensorModel{
  String? sensorId;
  double? Temperature;
  double? Humidity;
  double? CO2;
  DateTime? timestamp;

  SensorModel({
    required this.sensorId,
    required this.Temperature,
    required this.Humidity,
    required this.CO2,
    this.timestamp,
  });

  SensorModel.fromJson(Map<String, dynamic> json){

    sensorId = (json["sensorId"] );
    Temperature = (json["Temperature"] as num).toDouble();
    Humidity = (json["Humidity"] as num).toDouble();
    CO2 = (json["CO2"] as num).toDouble();
    timestamp = json["timestamp"] != null ? (json["timestamp"] as DateTime).toLocal() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["sensorId"] = sensorId;
    _data["Temperature"] = Temperature;
    _data["Humidity"] = Humidity;
    _data["CO2"] = CO2;
    _data["timestamp"] = timestamp;
    return _data;
  }
}
class SensorModel{
  String? sensorId;
  double? temperature;
  double? humidity;
  double? co2;
  DateTime? timestamp;

  SensorModel({
    required this.sensorId,
    required this.temperature,
    required this.humidity,
    required this.co2,
    this.timestamp,
  });

  SensorModel.fromJson(Map<String, dynamic> json){

    sensorId = (json["sensorId"] );
    temperature = (json["temperature"] as num).toDouble();
    humidity = (json["humidity"] as num).toDouble();
    co2 = (json["co2"] as num).toDouble();
    timestamp = json["timestamp"] != null ? (json["timestamp"] as DateTime).toLocal() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["sensorId"] = sensorId;
    _data["temperature"] = temperature;
    _data["humidity"] = humidity;
    _data["co2"] = co2;
    _data["timestamp"] = timestamp;
    return _data;
  }
}
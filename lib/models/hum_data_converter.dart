class Hum {
  int? humID;
  String? date;
  double? humidity;

  Hum({this.humID, this.date, this.humidity});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['humID'] = this.humID;
    data['date'] = this.date;
    data['humidity'] = this.humidity;
    return data;
  }
}
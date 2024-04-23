class Sensor {
  int? dataID;
  int? tempID;
  int? humID;
  int? aqId;

  Sensor({this.dataID, this.tempID, this.humID, this.aqId});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dataID'] = this.dataID;
    data['tempID'] = this.tempID;
    data['humID'] = this.humID;
    data['aqId'] = this.aqId;
    return data;
  }
}

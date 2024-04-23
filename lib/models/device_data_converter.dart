class Device {
  int? deviceID;
  int? dataID;

  Device({this.deviceID, this.dataID});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['deviceID'] = this.deviceID;
    data['dataID'] = this.dataID;
    return data;
  }
}


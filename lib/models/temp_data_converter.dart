class Temp {
  int? tempID;
  String? date;
  double? temprature;

  Temp({this.tempID, this.date, this.temprature});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tempID'] = this.tempID;
    data['date'] = this.date;
    data['temprature'] = this.temprature;
    return data;
  }
}
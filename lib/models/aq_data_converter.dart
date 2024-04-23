import 'package:flutter_exam_project/models/models.dart';

class AQ {
  int? aqID;
  String? date;
  double? airquality;

  AQ({this.aqID, this.date, this.airquality});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aqID'] = this.aqID;
    data['date'] = this.date;
    data['airquality'] = this.airquality;
    return data;
  }
}
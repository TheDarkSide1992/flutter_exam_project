class MotorModel{
  String? motorId;
  bool? isOpen;
  bool? isDisabled;

  MotorModel({
    required this.motorId,
    required this.isOpen,
    required this.isDisabled,
  });

  MotorModel.fromJson(Map<String, dynamic> json){

    motorId = (json["motorId"]);
    isOpen = (json["isOpen"] as bool);
    isDisabled = (json["isDisabled"] as bool);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["motorId"] = motorId;
    _data["isOpen"] = isOpen;
    _data["isDisabled"] = isDisabled;
    return _data;
  }
}
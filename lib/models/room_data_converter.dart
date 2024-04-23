class Room {
  int? roomID;
  int? userID;
  String? roomName;

  Room({this.roomID, this.userID, this.roomName});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roomID'] = this.roomID;
    data['userID'] = this.userID;
    data['RoomName'] = this.roomName;
    return data;
  }
}
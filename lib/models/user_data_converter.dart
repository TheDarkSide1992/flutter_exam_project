class User {
  int? userID;
  String? email;
  String? city;

  User({this.userID, this.email, this.city});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userID'] = this.userID;
    data['email'] = this.email;
    data['city'] = this.city;
    return data;
  }
}
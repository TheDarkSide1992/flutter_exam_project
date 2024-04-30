
class Profile {
  Profile({
    required this.userId,
    required this.username,
    required this.name,
    required this.email,
    required this.city
  });

  int? userId;
  String? username;
  String? name;
  String? email;
  String? city;


  Profile.fromJson(Map<String, dynamic> json){

    userId = (json["userId"] as num).toInt();
    username = (json["username"]);
    name = (json["name"]);
    email = (json["email"]);
    city = (json["city"]);


  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["userId"] = userId;
    _data["username"] = username;
    _data["name"] = name;
    _data["email"] = email;
    _data["city"] = city;
    return _data;
  }
}

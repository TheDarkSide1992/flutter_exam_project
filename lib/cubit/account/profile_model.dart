
//TODO this clas is a temporary model, and should be removed at a later date.
class Profile {
  Profile({
    required this.id,
    required this.username,
  });
  final String id;

  final String username;


  Profile.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        username = map['username'];
}
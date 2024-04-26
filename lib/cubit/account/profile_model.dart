
//TODO this clas is a temporary model, and should be removed at a later date.
class Profile {
  Profile({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.city
  });

  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String city;

  Profile.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        username = map['username'],
        firstName = map['firstName'],
        lastName = map['lastName'],
        email = map['email'],
        city = map['city'];
}

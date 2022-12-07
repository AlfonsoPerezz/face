class User {
  final String id;
  final String email;
  final String name;

  User(this.id, this.email, this.name);

  factory User.fromJason(dynamic json) {
    return User(json['id'], json['email'], json['name']);
  }

  @override
  String toString() {
    return "User(id: $id, email: $email, name: $name)";
  }
}

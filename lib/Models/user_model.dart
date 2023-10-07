class UserModel {
  UserModel({
    required this.id,
    required this.email,
    required this.firstame,
    required this.lastName,
    required this.avatar,
  });
  final String email, firstame, lastName, avatar, id;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"].toString(),
      email: json["email"],
      firstame: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
    );
  }
}

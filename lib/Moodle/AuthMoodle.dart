class Auhemoodel {
  int? id;
  String? userName;
  String? email;
  String? password;

  Auhemoodel({required this.userName, this.email, this.password});

  Auhemoodel.fromJson(Map<String, dynamic> json) {
    email = json["email"];
    userName = json["username"];
    password = json["password"];
  }
}

class Auhemoodel {
  int? id;
  String? name;
  String? email;
  String? password;

  Auhemoodel({this.id, this.name, this.email, this.password});

  Auhemoodel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    email = json["email"];
    password = json["password"];
    name = json["name"];
  }
}

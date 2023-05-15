import 'package:dio/dio.dart';
import 'package:smartphone/Moodle/AuthMoodle.dart';

class AuthHelber {
  AuthHelber._();
  static AuthHelber authHelber = AuthHelber._();
  Dio dio = Dio();
  Future<String> singIn(String userName, String password) async {
    String url = "https://fakestoreapi.com/auth/login";
    Map<String, dynamic> map = {"username": userName, "password": password};
    Response response = await dio.post(url, data: map);
    return response.data["token"];
  }

  Future<String> singUp(String userName, String email, String password) async {
    String url = "https://fakestoreapi.com/users";
    Map<String, dynamic> map = {
      "email": email,
      "username": userName,
      "password": password
    };
    Response response = await dio.post(url, data: map);
    return response.toString();
  }
}

import 'package:dio/dio.dart';

class AuthHelber {
  AuthHelber._();
  static AuthHelber authHelber = AuthHelber._();
  Dio dio = Dio();
  SingIn() {}
  SingUp() {}
}

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:touch/main.dart';
import 'package:touch/models/auth_model.dart';


class SessionControl{
  final storage = const FlutterSecureStorage();

  static void login(String email, String password) {
    var data = {
      "email": email,
      "password": password,
    };

    print(data);

    var authModel = AuthModel();
    authModel.setMethod('login');
    authModel.setSuccessCallback(
            (Map<String, dynamic>obj) =>
            {
              SessionControl().saveJWT(obj['access_token']),
              SessionControl().getJWT().then((value) => print(value)),
              SessionControl.toHome()
          }
      );

    authModel.setErrorCallback(
      (Map<String, dynamic>obj) => Fluttertoast.showToast(
        msg: "Usuário ou senha incorretos",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.redAccent,
        textColor: Colors.black,
        fontSize: 20,
      )
    );

    authModel.post(data);
  }

  void saveJWT(String jwt) async {
    await storage.write(key: 'JWT', value: jwt);
  }

  Future<String?> getJWT() async {
    return await storage.read(key: 'JWT');
  }

  void toLogin() {

  }

  void toPasswordLost(){

  }

  void toRegister() {

  }

  static void toHome() {
    navigatorKey.currentState?.pushNamed('initial-page');
  }

  void lostPassword(int id, String newPassWord) {

  }
}
import 'package:flutter/material.dart';

class LoginController {
  TextEditingController user_controller = TextEditingController();
  TextEditingController passwd_controller = TextEditingController();

  Future<bool> auth() async {
    print("Login: ${user_controller.text} User: ${passwd_controller.text}");
    return user_controller.text == "admin" && passwd_controller.text == "123";
  }
}

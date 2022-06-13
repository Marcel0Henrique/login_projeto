import 'package:flutter/material.dart';

class LoginController {
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  TextEditingController user_controller = TextEditingController();
  TextEditingController passwd_controller = TextEditingController();

  Future<bool> auth() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 2));
    isLoading.value = false;
    return user_controller.text == "admin" && passwd_controller.text == "123";
  }
}

import 'package:flutter/material.dart';

import 'package:login_projeto/controllers/login_controller.dart';

class LoginButton extends StatelessWidget {
  //* um componente é apenas uma extenção da view, não é indicado passar o controller se fosse um widget
  final String title;
  final LoginController login_controller;
  const LoginButton({
    Key? key,
    required this.title,
    required this.login_controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: login_controller.isLoading,
      builder: (_, isLoader, __) => isLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                login_controller.auth().then(
                  (result) {
                    if (result) {
                      Navigator.pushReplacementNamed(context, "/home");
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(erro_snackBar());
                    }
                  },
                );
              },
              child: Text(title),
            ),
    );
  }

  SnackBar erro_snackBar() {
    return SnackBar(
      content: Text("Erro"),
      duration: Duration(seconds: 3),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_projeto/components/login/login_button.dart';
import 'package:login_projeto/controllers/login_controller.dart';
import 'package:login_projeto/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.people,
                size: 98,
              ),
              CustomTextField(
                controller: _controller.user_controller,
                label: "Usuario",
              ),
              CustomTextField(
                controller: _controller.passwd_controller,
                label: "Senha",
                obscureText: true,
              ),
              SizedBox(
                height: 25,
              ),
              LoginButton(
                login_controller: _controller,
                title: "Entrar",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

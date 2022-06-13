import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const TextField(
                decoration: InputDecoration(
                  label: Text("Login"),
                  hintText: "Login",
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Senha"),
                  hintText: "Senha",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Entrar"))
            ],
          ),
        ),
      ),
    );
  }
}

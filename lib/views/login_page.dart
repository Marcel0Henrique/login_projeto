import 'package:flutter/material.dart';
import 'package:login_projeto/controllers/login_controller.dart';

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
              TextField(
                controller: _controller.user_controller,
                decoration: const InputDecoration(
                  label: Text("Login"),
                  hintText: "Login",
                ),
              ),
              TextField(
                controller: _controller.passwd_controller,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text("Senha"),
                  hintText: "Senha",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _controller.isLoading,
                builder: (_, isLoader, __) => isLoader
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          _controller.auth().then(
                            (result) {
                              if (result) {
                                Navigator.pushReplacementNamed(
                                    context, "/home");
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(erro_snackBar());
                              }
                            },
                          );
                        },
                        child: const Text("Entrar"),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

SnackBar erro_snackBar() {
  return SnackBar(
    content: Text("Erro"),
    duration: Duration(seconds: 3),
  );
}

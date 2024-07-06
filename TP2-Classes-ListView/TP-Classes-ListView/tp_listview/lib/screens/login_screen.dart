import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/core/data/login_datasource.dart';
import 'package:tp_listview/screens/home_screen.dart';

class LogIn {
  String user;
  String password;

  LogIn({
    required this.user,
    required this.password,
  });

  List<LogIn> logInList = [
    LogIn(user: 'Blas', password: '123'),
    LogIn(user: 'Rocco', password: '456'),
    LogIn(user: 'Luca', password: '789'),
  ];
}

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  LoginScreen({super.key});
  LogIn? login;

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(
                hintText: 'Usuario',
                icon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Contraseña',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                String textoingresadouser = userController.text;
                String textoingresadopass = passwordController.text;

                if (textoingresadouser.isEmpty || textoingresadopass.isEmpty) {
                  const logVacio = SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('Campos Vacíos'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logVacio);
                } else if (login!.user.contains(textoingresadouser) ||
                    login!.password.contains(textoingresadopass)) {
                  const logIncorrecto = SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('Usuario y/o Contraseña incorrectos'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logIncorrecto);
                } else {
                  int userNum = logInList.indexOf(textoingresadouser as LogIn);
                  if (login!.user[userNum] == textoingresadouser &&
                      login!.password[userNum] == textoingresadopass) {
                    context.pushNamed(HomeScreen.name,
                        extra: textoingresadouser);
                    const logInExitoso = SnackBar(
                      duration: Duration(seconds: 3),
                      content: Text('Bienvenido'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                  }
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

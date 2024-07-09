import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/core/data/login_datasource.dart';
import 'package:tp_listview/screens/home_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  LoginScreen({super.key});

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

                final profileData = logInList.firstWhere(
                  (profileData) => profileData.user == textoingresadouser,
                  orElse: () => LogIn(user: "", password: ""),
                );

                if (textoingresadouser.isEmpty || textoingresadopass.isEmpty) {
                  const logVacio = SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Campos Vacíos'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logVacio);
                } else {
                  if (profileData.user == textoingresadouser &&
                      profileData.password == textoingresadopass) {
                    context.pushNamed(HomeScreen.name);
                    const logInExitoso = SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Bienvenido'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                  } else {
                    const logIncorrecto = SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Usuario y/o Contraseña incorrectos'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(logIncorrecto);
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

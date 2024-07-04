import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/home_screen.dart';

List<String> users = ['Blas', 'Rocco', 'Luca'];
List<String> passwords = ['123', '456', '789'];

int user1 = users.indexOf('Blas');
int user2 = users.indexOf('Rocco');
int user3 = users.indexOf('Luca');

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

                if (!users.contains(textoingresadouser)) {
                  const userNoExiste = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Usuario no existe.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(userNoExiste);
                } else {
                  int user = users.indexOf(textoingresadouser);
                  if (passwords[user] != textoingresadopass) {
                    const logInFallido = SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('Contraseña incorrecta.'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(logInFallido);
                  } else {
                    context.pushNamed(HomeScreen.name);
                    const logInExitoso = SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('Bienvenido.'),
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

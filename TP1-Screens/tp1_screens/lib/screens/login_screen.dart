import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp1_screens/screens/home_screen.dart';

List<String> users = ['Blas', 'Rocco', 'Luca'];
List<String> password = ['123', '456', '789'];

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

                if (textoingresadouser.isEmpty && textoingresadopass.isEmpty) {
                  //¿Se ha ingresado Usuario y Contraseña?
                  const logInVacio = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Por favor, ingrese Usuario y Contraseña.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInVacio);
                } else if (textoingresadouser.isEmpty) {
                  //¿Se ha ingresado Usuario?
                  const logInVacio = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Por favor, ingrese Usuario.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInVacio);
                } else if (textoingresadopass.isEmpty) {
                  //¿Se ha ingresado Contraseña?
                  const logInVacio = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Por favor, ingrese Contraseña.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInVacio);
                } else if ((textoingresadouser == users[user1]) &&
                    (textoingresadopass == password[user1])) {
                  //Matching Usuario-Contraseña para User 1
                  context.pushNamed(HomeScreen.name,
                      extra: userController.text);
                  const logInExitoso = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Log In Exitoso'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                } else if ((textoingresadouser == users[user2]) &&
                    (textoingresadopass == password[user2])) {
                  //Matching Usuario-Contraseña para User 2
                  context.pushNamed(HomeScreen.name,
                      extra: userController.text);
                  const logInExitoso = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Log In Exitoso'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                } else if ((textoingresadouser == users[user3]) &&
                    (textoingresadopass == password[user3])) {
                  //Matching Usuario-Contraseña para User 3
                  context.pushNamed(HomeScreen.name,
                      extra: userController.text);
                  const logInExitoso = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Log In Exitoso'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInExitoso);
                } else {
                  //Login Fallido en cualquier otro caso
                  const logInFallido = SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('Log In Fallido'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(logInFallido);
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

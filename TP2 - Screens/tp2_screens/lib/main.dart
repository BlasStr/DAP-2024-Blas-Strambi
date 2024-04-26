import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}

TextEditingController userControllerUser = TextEditingController();
TextEditingController userControllerPassword = TextEditingController();

String textoingresadousuario = userControllerUser.text;
String textoingresadocontra = userControllerPassword.text;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario:',
                  prefixIcon: Icon(Icons.person)),
              controller: userControllerUser,
            ),
            SizedBox(height: 25),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña:',
                  prefixIcon: Icon(Icons.lock)),
              controller: userControllerPassword,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                if (textoingresadousuario == 'Android' &&
                    textoingresadocontra == '1234') {
                  print('Login exitoso.');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                }

                if (textoingresadousuario != 'Android' &&
                    textoingresadousuario != '') {
                  //Verificación de Usuario.
                  print('Login fallido. Usuario incorrecto.');
                }
                if (textoingresadousuario == '') {
                  print('Por favor, ingrese un usuario.');
                }

                if (textoingresadocontra != '1234' &&
                    textoingresadocontra != '') {
                  //Verificación de Contraseña.
                  print('Login fallido. Contraseña incorrecta.');
                }
                if (textoingresadocontra == '') {
                  //Verificación de Contraseña.
                  print('Por favor, ingrese una contraseña.');
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Welcome, $textoingresadousuario',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(0, 0, 0, 100),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to Log In'),
            ),
          ]),
        )));
  }
}

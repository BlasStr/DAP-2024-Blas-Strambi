import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

TextEditingController userControllerUser = TextEditingController();
TextEditingController userControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
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

                  SizedBox(height:25),

                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña:',
                      prefixIcon: Icon(Icons.lock)),
                      controller: userControllerPassword,
                  ),

                  SizedBox(height:25),
                  
                  ElevatedButton(
                  onPressed: () {
                    String textoingresadousuario = userControllerUser.text;
                    String textoingresadocontra = userControllerPassword.text;

                    if (textoingresadousuario == 'Android' && textoingresadocontra == '1234') {
                      print('Login exitoso.');
                    } 

                    if (textoingresadousuario != 'Android' && textoingresadousuario != '') { //Verificación de Usuario.
                      print('Login fallido. Usuario incorrecto.');
                    }
                    if (textoingresadousuario == '') {
                      print('Por favor, ingrese un usuario.');
                    }
                    

                    if (textoingresadocontra != '1234' && textoingresadocontra != '') { //Verificación de Contraseña.
                      print('Login fallido. Contraseña incorrecta.');
                    }
                    if (textoingresadocontra == '') { //Verificación de Contraseña.
                      print('Por favor, ingrese una contraseña.');
                    }

                  
                  },
                  child: const Text('Login'),
                  ),
                ],
            ),
          )
        ),
      ),
    );
  }
}
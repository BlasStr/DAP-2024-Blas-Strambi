import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home';

String nombredeUsuario;
 HomeScreen({super.key, this.nombredeUsuario= ''});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar (
        title: const Text('Home')
        ),
      body: const Center(
        child: Column (mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('Welcome, Android', style: TextStyle(color: Color.fromRGBO(255, 0, 85, 1), fontSize: 40)),
               //Text($textoingresadouser, style: const TextStyle(color: Color.fromRGBO(255, 0, 85, 1), fontSize: 40),),
          ],),
      ),
    );
  }
}
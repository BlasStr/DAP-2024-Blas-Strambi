import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home';

String userName;
 HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar (
        title: const Text('Home')
        ),
      body:  Center(
        child: Column (mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              const Text('Bienvenido', style:  TextStyle(fontSize: 40),),
               Text($textoingresadouser, style: const TextStyle(color: Color.fromRGBO(255, 0, 0, 0), fontSize: 40),),
          ],),
      ),
    );
  }
}
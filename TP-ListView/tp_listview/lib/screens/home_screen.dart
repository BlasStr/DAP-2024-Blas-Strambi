import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  String nombredeUsuario;
  HomeScreen({super.key, this.nombredeUsuario = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, User',
                style: TextStyle(
                    color: Color.fromRGBO(152, 31, 188, 1), fontSize: 40)),
          ],
        ),
      ),
    );
  }
}

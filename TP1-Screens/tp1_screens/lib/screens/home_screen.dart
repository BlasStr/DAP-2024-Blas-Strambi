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
      body: 
          ListView.
        ),
  }
}

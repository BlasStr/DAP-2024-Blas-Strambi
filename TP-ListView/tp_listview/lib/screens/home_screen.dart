import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  HomeScreen({super.key});

  List<String> gEmpanadas = [
    'Jamón y Queso',
    'Carne Picante',
    'Carne Suave',
    'Queso y Cebolla',
    'Caprese',
    'Roquefort',
    'Verdura',
    'Humita',
    'Champiñones',
    'Carne Cortada a Cuchillo',
    'DDL',
    'Atún',
    'Bacalao',
    'Calamar',
    'Berenejena',
    'Brócoli y Crema',
    'Cheeseburger',
    'Cantimpalo',
    'Ciruela y Panceta',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: gEmpanadas.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(gEmpanadas[index]),
              subtitle: Text('Gusto de empanada Nº$index'),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  HomeScreen({super.key});

  List<String> deportes = [
    'Fútbol',
    'Rugby',
    'Handball',
    'Gym',
    'Básquet',
    'Natación',
    'Gimnasia Artística',
    'Tennis',
    'Golf',
    'Boxeo',
    'Badminton',
    'Rocket League',
    'Béisbol',
    'Softball',
    'Waterpolo',
    'Cricket',
    'Brawl Stars',
    'Nado Sincronizado',
    'Voley',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: ListView.builder(
          itemCount: deportes.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(deportes[index]),
                subtitle: Text('Deporte Nº $index'),
              ),
            );
          },
        ));
  }
}

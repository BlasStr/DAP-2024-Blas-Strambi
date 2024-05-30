import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  HomeScreen({super.key});

  List<String> phoneGames = [
    'Brawl Stars',
    'New Star Soccer',
    'Subway Surfers',
    'Minion Rush',
    'Candy Crush',
    'Clash Royale',
    'Clash of Clans',
    'Truco Blyts',
    'Zombie Tsunami',
    'Crossy Road'
  ];

  List<String> developers = [
    'Supercell',
    'Five Aces Publishing Ltd',
    'SYBO Games',
    'Gameloft',
    'King',
    'Supercell',
    'Supercell',
    'Blyts',
    'Mobigame SAS',
    'HIPSTER WHALE'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: ListView.builder(
          itemCount: phoneGames.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(phoneGames[index]),
                subtitle: Text(developers[index]),
              ),
            );
          },
        ));
  }
}

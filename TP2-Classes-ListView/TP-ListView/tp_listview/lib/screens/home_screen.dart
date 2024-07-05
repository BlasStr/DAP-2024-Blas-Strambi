import 'package:flutter/material.dart';

class PhoneGames {
  String id;
  String title;
  String developer;
  String description;
  String urlimage;
  int year;

  PhoneGames({
    required this.id,
    required this.title,
    required this.developer,
    required this.description,
    required this.urlimage,
    required this.year,
  });

  String mostrarInfo(){
    return (id + title + developer + description + urlimage + year.toString());
  }
}


class HomeScreen extends StatefulWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PhoneGames> phoneGames = [
    PhoneGames(id: '00', title: 'Brawl Stars', developer: 'Supercell', description: 'Description goes here.', urlimage: 'https://i.scdn.co/image/ab6761610000e5ebf7b952107c126c561c52171e', year: 2017)
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
                title: Text(phoneGames[index] as String),
                subtitle: Text('Deporte Nº $index'),
              ),
            );
          },
        ));
  }
}

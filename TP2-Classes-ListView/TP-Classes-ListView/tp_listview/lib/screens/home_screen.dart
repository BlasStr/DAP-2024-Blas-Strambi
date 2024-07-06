import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/detail_screen.dart';

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
}

class HomeScreen extends StatefulWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PhoneGames> phoneGamesList = [
    PhoneGames(
      id: '01',
      title: 'Brawl Stars',
      description: 'Description goes here',
      developer: 'Supercell',
      year: 2017,
      urlimage:
          'https://i.scdn.co/image/ab6761610000e5ebf7b952107c126c561c52171e',
    ),
    PhoneGames(
      id: '02',
      title: 'Clash Royale',
      description: 'Description goes here',
      developer: 'Supercell',
      year: 2016,
      urlimage:
          'https://upload.wikimedia.org/wikipedia/fi/thumb/9/9d/Clash_Royale.png/250px-Clash_Royale.png',
    ),
    PhoneGames(
      id: '03',
      title: 'Subway Surfers',
      description: 'Description goes here',
      developer: 'SYBO Games',
      year: 2012,
      urlimage:
          'https://play-lh.googleusercontent.com/alCSQLIJVL4VB9OtGATP7f503VojDSgl_V78Zzz8AvGxfs1xaEmIFoVWrKtjigjPMecH',
    ),
    PhoneGames(
      id: '04',
      title: 'Candy Crush',
      description: 'Description goes here',
      developer: 'King',
      year: 2012,
      urlimage:
          'https://play-lh.googleusercontent.com/6ducfNys46MGge6Bl3kaHaGbNnnQh46j6-3JkOqk0PKgUNVhm-dlNenJwz65nYZ4B0g8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: ListView.builder(
          itemCount: phoneGamesList.length,
          itemBuilder: (context, index) {
            final gameElement = phoneGamesList[index];
            return Padding(
              padding: const EdgeInsets.all(.0),
              child: Card(
                child: ListTile(
                    // ignore: unnecessary_null_comparison
                    leading: gameElement.urlimage != null
                        ? _getPoster(gameElement.urlimage)
                        : const Icon(Icons.movie),
                    title: Text(gameElement.title),
                    subtitle: Text('Developer: ${gameElement.developer}'),
                    trailing: const Icon(Icons.arrow_circle_right_sharp),
                    onTap: () => context.pushNamed(DetailScreen.name)),
              ),
            );
          },
        ));
  }

  Widget _getPoster(String urlimage) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(urlimage),
    );
  }
}

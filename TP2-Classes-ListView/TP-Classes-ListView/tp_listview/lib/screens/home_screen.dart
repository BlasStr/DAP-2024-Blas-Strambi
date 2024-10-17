// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';
import 'package:tp_listview/screens/add_screen.dart';
import 'package:tp_listview/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Games> _gamesList = List.from(gamesList);

  void _addGame(String title, String developer, String description,
      String imageUrl, String year) {
    // Create a new game element
    final newGame = Games(
      title: title.isEmpty ? 'Unknown' : title,
      developer: developer.isEmpty ? 'Unknown' : developer,
      description: description.isEmpty ? 'Unknown' : description,
      urlimage: imageUrl.isEmpty ? 'Unknown' : imageUrl,
      year: (year.isEmpty || int.tryParse(year) == null) ? 0 : int.parse(year),
    );
    setState(() {
      _gamesList.add(newGame);
    });
  }

  void _updateGame(Games updatedGame) {
    setState(() {
      int index =
          gamesList.indexWhere((game) => game.title == updatedGame.title);
      if (index != -1) {
        gamesList[index] = updatedGame; // Update the game in the list
      }
    });
  }

  void _deleteGame(Games game) {
    setState(() {
      _gamesList.remove(game);
    });

    const gameErased = SnackBar(
      duration: Duration(seconds: 1),
      content: Text('Elemento eliminado.'),
    );
    ScaffoldMessenger.of(context).showSnackBar(gameErased);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Navigate to the AddGameScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddGameScreen(onAddGame: _addGame),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(50, 50, 50, 0.5),
              Color.fromRGBO(100, 100, 100, 0.5),
              Color.fromRGBO(150, 150, 150, 0.5),
              Color.fromRGBO(200, 200, 200, 0.5),
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: _gamesList.length,
          itemBuilder: (context, index) {
            Games gameElement = _gamesList[index];
            return Padding(
              padding: const EdgeInsets.only(),
              child: Card(
                color: const Color.fromRGBO(240, 235, 240, 1),
                child: ListTile(
                    // ignore: unnecessary_null_comparison
                    leading: gameElement.urlimage != null
                        ? _getPoster(gameElement.urlimage)
                        : const Icon(Icons.gamepad),
                    title: Text(gameElement.title),
                    subtitle: Text('Developer: ${gameElement.developer}'),
                    trailing: const Icon(Icons.arrow_circle_right_sharp),
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              gameDetail: gameElement,
                              onDelete: _deleteGame, // Pass the delete function
                              onUpdate: _updateGame, // Pass the update function
                            ),
                          ),
                        )),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _getPoster(String urlimage) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Image.network(urlimage),
    );
  }
}

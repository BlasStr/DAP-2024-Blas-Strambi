// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/data/games_datasource.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Callback to the Functions in detail screen
class DetailScreenExtras {
  final Games game;
  final Function(Games) onDelete;
  final Function(Games) onUpdate;

  DetailScreenExtras(this.game, this.onDelete, this.onUpdate);
}

// Add Function
class _HomeScreenState extends State<HomeScreen> {
  final List<Games> newGamesList = List.from(gamesList);

  void _addGame(String id, String title, String developer, String description,
      String imageUrl, String year) {
    final newGame = Games(
      id: (gamesList.length + 1).toString(),
      title: title,
      developer: developer,
      description: description,
      urlimage: imageUrl,
      year: int.tryParse(year) ?? 0,
    );

    setState(() {
      newGamesList.add(newGame);
    });
  }

// Update Function
  void _updateGame(Games updatedGame) {
    setState(() {
      int index = newGamesList.indexWhere((game) => game.id == updatedGame.id);
      if (index != -1) {
        newGamesList[index] = updatedGame;
      }
    });
  }

// Delete Function
  void _deleteGame(Games game) {
    setState(() {
      newGamesList.remove(game);
    });

    const gameErased = SnackBar(
      duration: Duration(seconds: 1),
      content: Text('Element erased'),
    );
    ScaffoldMessenger.of(context).showSnackBar(gameErased);
  }

// Button that goes to the add aplication screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.push('/add', extra: _addGame);
              }),
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
          itemCount: newGamesList.length,
          itemBuilder: (context, index) {
            Games gameElement = newGamesList[index];
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
                    onTap: () => context.push(
                      '/detail',
                      extra: DetailScreenExtras(
                          gameElement, _deleteGame, _updateGame),
                    ),
                  ),
                ));
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

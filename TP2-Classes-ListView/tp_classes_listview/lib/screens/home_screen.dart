import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';
import 'package:tp_listview/entities/games.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final List<Games> games_ = gamesList;

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unrelated_type_equality_checks
    final games = gamesList.firstWhere((game) => game.id == games_);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: _GamesView(games: games),
    );
  }
}

class _GamesView extends StatelessWidget {
  const _GamesView({
    required this.games,
  });

  final Games games;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (games.poster != null) Image.network(games.poster!, height: 400),
          const SizedBox(height: 16),
          Text(
            games.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Developer: ${games.developer}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Year: ${games.year}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

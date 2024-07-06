import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.gameId,
  });

  static const String name = 'detail_screen';
  final String gameId;

  @override
  Widget build(BuildContext context) {
    final game = phoneGamesList.firstWhere((game) => game.id == gameId);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Game Details'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(game.urlimage, height: 400),
              const SizedBox(height: 16),
              Text(
                game.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Developer: ${game.developer}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'Year: ${game.year}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                game.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ));
  }
}

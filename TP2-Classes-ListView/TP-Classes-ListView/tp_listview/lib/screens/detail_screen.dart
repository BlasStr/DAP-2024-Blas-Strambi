import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  static const String name = 'detail_screen';

  @override
  Widget build(BuildContext context) {
    final gameId = phoneGamesList.firstWhere(
      (gameId) => gameId.id == gameId,
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Game Details'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(gameId.urlimage, height: 400),
              const SizedBox(height: 16),
              Text(
                gameId.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Developer: ${gameId.developer}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'Year: ${gameId.year}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                gameId.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ));
  }
}

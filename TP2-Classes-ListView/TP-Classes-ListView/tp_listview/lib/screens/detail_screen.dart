import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  static const String name = 'detail_screen';

  DetailScreen({super.key, this.gameDetail});

  PhoneGames? gameDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Game Details'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(gameDetail!.urlimage, height: 400),
              const SizedBox(height: 16),
              Text(
                gameDetail!.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                gameDetail!.developer,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                gameDetail!.year.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                gameDetail!.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ));
  }
}

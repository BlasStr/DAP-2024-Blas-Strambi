import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listview/core/data/games_datasource.dart';
import 'package:tp_listview/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

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

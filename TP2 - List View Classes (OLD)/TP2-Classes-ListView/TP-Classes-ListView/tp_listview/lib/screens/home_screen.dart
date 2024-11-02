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
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: const Color.fromRGBO(200, 200, 200, 0.5),
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
              ])),
          child: ListView.builder(
            itemCount: gamesList.length,
            itemBuilder: (context, index) {
              Games gameElement = gamesList[index];
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
                      onTap: () => context.pushNamed(DetailScreen.name,
                          extra: gameElement),
                    ),
                  ));
            },
          ),
        ));
  }

  Widget _getPoster(String urlimage) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Image.network(urlimage),
    );
  }
}

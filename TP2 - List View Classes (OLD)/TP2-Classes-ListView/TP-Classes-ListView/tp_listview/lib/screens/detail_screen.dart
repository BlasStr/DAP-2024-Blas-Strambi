import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  static const String name = 'detail_screen';

  DetailScreen({super.key, this.gameDetail});

  Games? gameDetail;

  Widget titleAlign(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: gameDetail!.title,
        style: const TextStyle(
          color: Color.fromARGB(255, 60, 60, 60),
          fontFamily: 'OpenSans',
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget developerAlign(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: 'Developer: ${gameDetail?.developer}',
        style: const TextStyle(
          color: Color.fromARGB(255, 60, 60, 60),
          fontFamily: 'OpenSans',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget yearAlign(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: 'Year of release: ${gameDetail?.year.toString()}',
        style: const TextStyle(
          color: Color.fromARGB(255, 60, 60, 60),
          fontFamily: 'OpenSans',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget descAlign(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        text: gameDetail!.description,
        style: const TextStyle(
          color: Color.fromARGB(255, 60, 60, 60),
          fontFamily: 'OpenSans',
          fontSize: 20.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Game Details'),
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ListView(
                children: [
                  FittedBox(
                      child: Image.network(gameDetail!.urlimage, height: 1)),
                  const SizedBox(height: 16),
                  titleAlign(context),
                  const SizedBox(height: 12.0),
                  developerAlign(context),
                  yearAlign(context),
                  const SizedBox(height: 30.0),
                  descAlign(context),
                ],
              ),
            ),
          ),
        ));
  }
}

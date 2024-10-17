import 'package:flutter/material.dart';
import 'package:tp_listview/core/data/games_datasource.dart';

class DetailScreen extends StatelessWidget {
  static const String name = 'detail_screen';

  const DetailScreen(
      {super.key,
      this.gameDetail,
      required this.onDelete,
      required this.onUpdate});

  final Games? gameDetail;
  final Function(Games) onDelete; // Callback for deletion
  final Function(Games) onUpdate;

  //Title
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

  //Developer
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

  //Year
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

  //Description
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

  // Function to show the edit dialog
  Future<Games?> _editGame(BuildContext context) {
    final TextEditingController titleController =
        TextEditingController(text: gameDetail?.title);
    final TextEditingController developerController =
        TextEditingController(text: gameDetail?.developer);
    final TextEditingController descriptionController =
        TextEditingController(text: gameDetail?.description);
    final TextEditingController imageUrlController =
        TextEditingController(text: gameDetail?.urlimage);
    final TextEditingController yearController =
        TextEditingController(text: gameDetail?.year.toString());

    return showDialog<Games?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Game'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Game Title'),
              ),
              TextField(
                controller: developerController,
                decoration: const InputDecoration(labelText: 'Developer'),
              ),
              TextField(
                controller: imageUrlController,
                decoration: const InputDecoration(labelText: 'Image URL'),
              ),
              TextField(
                controller: yearController,
                decoration: const InputDecoration(labelText: 'Year'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (titleController.text.isNotEmpty) {
                  int? year;
                  try {
                    year = int.parse(yearController.text);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text(
                              'Invalid year format. Please enter a valid number.')),
                    );
                    return; // Prevent further action if parsing fails
                  }

                  final updatedGame = Games(
                    title: titleController.text,
                    developer: developerController.text,
                    description: descriptionController.text,
                    urlimage: imageUrlController.text,
                    year: year,
                  );

                  onUpdate(updatedGame); // Call the update callback
                  Navigator.pop(context, updatedGame);
                }
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  // Other existing methods (titleAlign, developerAlign, etc.)

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
            ],
          ),
        ),
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
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _editGame(context).then((updatedGame) {
                          if (updatedGame != null) {}
                        });
                      },
                      child: const Text('Edit'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Call the delete function
                        onDelete(gameDetail!); // Remove the game

                        // Navigate back to the HomeScreen
                        Navigator.pop(
                            context); // This should go back to the HomeScreen
                      },
                      child: const Text('Delete'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

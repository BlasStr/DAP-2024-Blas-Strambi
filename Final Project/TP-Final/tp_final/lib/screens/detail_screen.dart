import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/data/games_datasource.dart';

class DetailScreen extends StatelessWidget {
  static const String name = 'detail_screen';

  const DetailScreen({
    super.key,
    required this.gameDetail,
    required this.onDelete,
    required this.onUpdate,
  });

  final Games gameDetail;
  final Function(Games) onDelete;
  final Function(Games) onUpdate;

  // Method to show the edit dialog
  Future<void> _editGame(BuildContext context) {
    final TextEditingController titleController =
        TextEditingController(text: gameDetail.title);
    final TextEditingController developerController =
        TextEditingController(text: gameDetail.developer);
    final TextEditingController descriptionController =
        TextEditingController(text: gameDetail.description);
    final TextEditingController imageUrlController =
        TextEditingController(text: gameDetail.urlimage);
    final TextEditingController yearController =
        TextEditingController(text: gameDetail.year.toString());

    return showDialog<void>(
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
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
              TextField(
                controller: imageUrlController,
                decoration: const InputDecoration(labelText: 'Image URL'),
              ),
              TextField(
                controller: yearController,
                decoration: const InputDecoration(
                    labelText: 'Year (Will default to 0 if not an integer)'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final updatedGame = Games(
                    id: gameDetail.id, // The ID does not change
                    title: titleController.text,
                    developer: developerController.text,
                    description: descriptionController.text,
                    urlimage: imageUrlController.text,
                    year: int.tryParse(yearController.text) ??
                        0 // If the year inputted is not an int, or it faails to read it as such, the default value is 0
                    );

                onUpdate(updatedGame);
                context.pop();
                context.pop(); // Pops back to the home screen
                const gameEdited = SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text('Element changed'),
                );
                ScaffoldMessenger.of(context).showSnackBar(gameEdited);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () => context.pop(), // Return to the Detail Screen
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

// Game information
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
                FittedBox(child: Image.network(gameDetail.urlimage)),
                const SizedBox(height: 16),
                Text(gameDetail.title,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Text('Developer: ${gameDetail.developer}',
                    style: const TextStyle(fontSize: 20)),
                Text('Year of release: ${gameDetail.year}',
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 30),
                Text(gameDetail.description,
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _editGame(context);
                      },
                      child: const Text('Edit'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        onDelete(gameDetail);
                        context.pop(); // Return to the Home Screen
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

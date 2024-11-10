import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddGameScreen extends StatelessWidget {
  static const String name = 'add_screen';

  // Define controllers
  final TextEditingController titleController = TextEditingController();
  final TextEditingController developerController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  final TextEditingController yearController = TextEditingController();

  final Future<void> Function(String, String, String, String, String, String)
      onAddGame;

  AddGameScreen({super.key, required this.onAddGame});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Game'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Color.fromRGBO(50, 40, 50, 0.5),
                Color.fromRGBO(100, 90, 100, 0.5),
                Color.fromRGBO(150, 140, 150, 0.5),
                Color.fromRGBO(200, 190, 200, 0.5),
              ])),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Text Fields
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
                  decoration:
                      const InputDecoration(labelText: 'Game Description'),
                ),
                TextField(
                  controller: imageUrlController,
                  decoration: const InputDecoration(labelText: 'Image URL'),
                ),
                TextField(
                  controller: yearController,
                  decoration: const InputDecoration(
                      labelText:
                          'Year of Release (Will default to 0 if not an integer)'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Validate inputs
                    if (titleController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Title cannot be empty'),
                        ),
                      );
                      return;
                    }

                    Map<String, String> newGameData = {
                      // Map the data of the new game
                      "ID": FirebaseFirestore.instance
                          .collection('games')
                          .doc()
                          .id,
                      "Title": titleController.text,
                      "Developer": developerController.text,
                      "Description": descriptionController.text,
                      "Image": imageUrlController.text,
                      "Year": yearController.text.isEmpty
                          ? '0'
                          : yearController.text,
                    };

                    // Use the mapped data to create the new game
                    onAddGame(
                      newGameData["ID"]!,
                      newGameData["Title"]!,
                      newGameData["Developer"]!,
                      newGameData["Description"]!,
                      newGameData["Image"]!,
                      newGameData["Year"]!,
                    );

                    context.pop(); // Go back to Home Screen
                    const gameAdded = SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Element added'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(gameAdded);
                  },
                  child: const Text('Add Game'),
                ),
              ],
            ),
          ),
        ));
  }
}

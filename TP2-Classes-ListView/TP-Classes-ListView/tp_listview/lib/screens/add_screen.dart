import 'package:flutter/material.dart';

class AddGameScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController developerController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  final TextEditingController yearController = TextEditingController();

  final Function(String, String, String, String, String) onAddGame;

  AddGameScreen({super.key, required this.onAddGame});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
              decoration: const InputDecoration(labelText: 'Game Description'),
            ),
            TextField(
              controller: imageUrlController,
              decoration:
                  const InputDecoration(labelText: 'Image URL (optional)'),
            ),
            TextField(
              controller: yearController,
              decoration: const InputDecoration(labelText: 'Year of Release'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final developer = developerController.text;
                final description = descriptionController.text;
                final imageUrl = imageUrlController.text;
                final year = yearController.text;

                if (title.isNotEmpty) {
                  onAddGame(title, developer, description, imageUrl, year);
                  Navigator.pop(context); // Go back to the previous screen
                }
              },
              child: const Text('Add Game'),
            ),
          ],
        ),
      ),
    );
  }
}

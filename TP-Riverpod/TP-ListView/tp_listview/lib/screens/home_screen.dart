import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tp_listview/providers/list_provider.dart';

// ignore: must_be_immutable
class HomeScreen extends ConsumerWidget {
  static const String name = 'home';
  const HomeScreen({super.key});

  //int counter = 0;

  @override
  Widget build(BuildContext context, ref) {
    final counter = ref.watch(listProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
          child: Text(
            "Counter: $counter",
            style: const TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            ref.read(listProvider.notifier).state++;
          },
          child: const Text('+'),
        ),
        
            );
          }
  }


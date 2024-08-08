import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:tp_listview/providers/list_provider.dart';

// ignore: must_be_immutable
class Listasgod extends ConsumerWidget {
  static const String name = 'god';
  const Listasgod({super.key});

  //int counter = 0;

  @override
  Widget build(BuildContext context, ref) {
    //final counter = ref.watch(listProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('Deportes')),
        body: const Center(
        //poner aca boludeces jaja
            )
      
      );
          }
  }
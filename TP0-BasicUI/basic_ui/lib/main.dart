import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Sign In',  
             style:TextStyle(fontSize: 30, 
             color:Color.fromRGBO(255, 50, 255, 100),
             fontWeight: FontWeight.bold,

             ),
            ),

            SizedBox(height:25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
              Text('Blas & Rocco', 
              style:TextStyle(fontSize: 24),)],
            ),
  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock),
              Text('Password', 
              style:TextStyle(fontSize: 24),)],
            )
            ],
            ),
        ),
          
        ),
        ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/data/login_datasource.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const String name = 'login';
  LoginScreen({super.key});

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Color.fromARGB(255, 60, 60, 60),
                  fontFamily: 'OpenSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),

              // Email Box
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'User',
                  style: TextStyle(
                    color: Color.fromARGB(255, 60, 60, 60),
                    fontFamily: 'OpenSans',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  hintText: 'Enter User',
                  icon: Icon(Icons.person),
                ),
                obscureText: false,
              ),
              const SizedBox(height: 30.0),

              // Password Box
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 60, 60, 60),
                    fontFamily: 'OpenSans',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),

              // Button
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () {
                    String userInput = userController.text;
                    String passwordInput = passwordController.text;

                    final profileData = logInList.firstWhere(
                      (profileData) => profileData.user == userInput,
                      orElse: () => LogIn(user: "", password: ""),
                    );

                    // Empty fields message
                    if (userInput.isEmpty || passwordInput.isEmpty) {
                      const logVacio = SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('Empty fields'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(logVacio);
                    } else {
                      // Succesful Log In
                      if (profileData.user == userInput &&
                          profileData.password == passwordInput) {
                        context.go('/home');
                        const successfulLogIn = SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Welcome'),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(successfulLogIn);
                      } else {
                        const failedLogIn = SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Invalid User/Password'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(failedLogIn);
                      }
                    }
                  },

                  // Other decoration
                  child: const Text(
                    'Sign In with your account',
                    style: TextStyle(
                      color: Color.fromARGB(255, 60, 60, 60),
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

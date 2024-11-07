import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '../core/data/auth.dart';

class LoginRegisterScreen extends StatefulWidget {
  static const String name = 'login_register';
  const LoginRegisterScreen({super.key});

  @override
  State<LoginRegisterScreen> createState() => _LoginRegisterScreenState();
}

// Error messages, Firebase things
class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
  String? errorMessage = "";
  bool isLogin = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // Navigate to the next screen if sign-in is successful
      // ignore: use_build_context_synchronously
      context.go('/home');
      const successfulLogIn = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Welcome'),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(successfulLogIn);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  // Create user function
  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // Navigate to the next screen if registration is successful
      // ignore: use_build_context_synchronously
      context.go('/home');
      const successfulLogIn = SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Welcome'),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(successfulLogIn);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('Login');
  }

  // Inputs
  Widget _entryField(
    String title,
    TextEditingController controller,
    Icon icon,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  // Automated error message
  Widget _errorMessage() {
    return Text(
      errorMessage == "" ? "" : " $errorMessage ",
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 60, 60),
        fontFamily: 'OpenSans',
        fontSize: 10.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // Sign In button
  Widget _submitButton() {
    return ElevatedButton(
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        child: const Text("Sign In with Email and Password"));
  }

  // Register button
  Widget _registerButton() {
    return TextButton(
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        child: const Text("Register"));
  }

  // Register window
  Widget _logInOrRegisterButton() {
    return TextButton(
      onPressed: () {
        // Show dialog
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Register'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _entryField(
                      "Enter Email", emailController, const Icon(Icons.person)),
                  const SizedBox(height: 30.0),
                  _entryField("Enter Password", passwordController,
                      const Icon(Icons.lock)),
                  const SizedBox(height: 10.0),
                ],
              ),
              actions: [
                _registerButton(),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ],
            );
          },
        );
      },
      child: const Text("Register Instead"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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

              _entryField(
                  "Enter Email", emailController, const Icon(Icons.person)),
              const SizedBox(height: 30.0),

              _entryField(
                  "Enter Password", passwordController, const Icon(Icons.lock)),
              const SizedBox(height: 10.0),

              _errorMessage(),
              const SizedBox(height: 30.0),

              _submitButton(),
              const SizedBox(height: 10.0),

              _logInOrRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}

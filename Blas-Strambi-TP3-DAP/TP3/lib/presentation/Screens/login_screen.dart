import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  
  TextEditingController userController = TextEditingController() ;
  TextEditingController passwordController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
        body: Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             TextField(
              controller: userController,
              decoration: const InputDecoration(
                hintText: 'Usuario',
                icon: Icon(Icons.person),
             ),
            ),

             TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Contraseña',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),

             const SizedBox(height: 80),

             ElevatedButton(
              onPressed: (){
                String inputUser = userController.text;
                String inputPass = passwordController.text;

                if(inputPass.isEmpty || inputUser.isEmpty){
                  print("Por favor, ingrese Usuario y/o Contraseña");
                } else if ((inputUser == "Android") && (inputPass == "1234") ){
                  print("Log In exitoso");
                  context.pushNamed(HomeScreen.name , extra: inputUser);
                } else {
                  print("Log In fallido");
                }
                }, 
              
              child: const Text('Login'), 

            ),
                        
        ],),
      );
      }
}
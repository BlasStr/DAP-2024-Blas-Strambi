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
                String textoingresadouser = userController.text;
                String textoingresadopass = passwordController.text;

                if(textoingresadouser.isEmpty || textoingresadopass.isEmpty){
                  print("Por favor, ingrese Usuario y/o Contraseña");
                } else if ((textoingresadouser == "Android") && (textoingresadopass == "1234") ){
                  print("Log In exitoso");
                  context.pushNamed(HomeScreen.name , extra: textoingresadouser);
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
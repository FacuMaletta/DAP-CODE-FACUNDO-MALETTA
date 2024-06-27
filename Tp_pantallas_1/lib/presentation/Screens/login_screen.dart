import 'package:clase18_4/presentation/Screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  
  TextEditingController passController = TextEditingController() ;
  TextEditingController userController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
        body: Column (mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
             TextField(
              controller: userController,
              decoration: const InputDecoration(
                hintText: 'Usuario',
                icon: Icon(Icons.person_2_outlined),
             ),
            ),

             TextField(
              controller: passController,
              decoration: const InputDecoration(
                hintText: 'Contraseña',
                icon: Icon(Icons.lock_clock_outlined),
              ),
              obscureText: true,
            ),

             const SizedBox(height: 50),

             ElevatedButton(
              onPressed: (){
                String inputUser = userController.text;
                String inputPass = passController.text;


                if ((inputUser == "jorge") && (inputPass == "sacachispas") ){
                  print("Sesión iniciada correctamente");
                  
                  context.pushNamed(HomeScreen.name , extra: inputUser);
                }
                else{
                  print("Error");
                }
                }, 
              
              child: const Text('Iniciar sesión'), 

            ),

            
        
        
        ],),
      );
    

  }
}
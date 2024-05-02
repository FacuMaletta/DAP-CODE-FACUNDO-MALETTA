import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
static const String name = 'home';

String userName;
 HomeScreen({super.key , this.userName = ""});
  

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar (
        title: const Text('Home')),
      body:  Center(
        child: Row (mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              const Text('Bienvenido  ', style:  TextStyle( fontSize: 20),),
               Text(userName, style: const TextStyle(color: Color.fromRGBO(252, 1, 14, 1) , fontSize: 30),),
        
          ],),
      ),
    );
  }
}
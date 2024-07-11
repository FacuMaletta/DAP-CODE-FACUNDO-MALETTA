import 'package:clase18_4/presentation/Screens/home_screen.dart';
import 'package:clase18_4/presentation/Screens/Login_screen.dart';
import 'package:clase18_4/presentation/Screens/Infopaises_screen.dart';
import 'package:clase18_4/presentation/Screens/infopaises_screen.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter( 

initialLocation: '/login',
  
 routes: [

  GoRoute(path:'/login', 
  builder: (context, state) => LoginScreen() ,),

  GoRoute(path:'/home',
  name: HomeScreen.name,
  builder: (context, state) =>  HomeScreen(userName: state.extra as String),
  ),

     GoRoute(
      name: InfopaisesScreen.name,
      path: '/infopais/:paisId',
      builder: (context, state) {

        final paisId = state.pathParameters['paisId'];
        return InfopaisesScreen(
          paisId: paisId!,
        );
      },
    ),



]);
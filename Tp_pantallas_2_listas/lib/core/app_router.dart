import 'package:clase18_4/presentation/Screens/home_screen.dart';
import 'package:clase18_4/presentation/Screens/login_screen.dart';
import 'package:clase18_4/presentation/Screens/register_screen.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(userName: state.extra as String),
    ),
    GoRoute(
      path: '/register',
      name: RegisterScreen.name,
      builder: (context, state) => RegisterScreen(users: state.extra as List<String>),
    ),
  ],
);
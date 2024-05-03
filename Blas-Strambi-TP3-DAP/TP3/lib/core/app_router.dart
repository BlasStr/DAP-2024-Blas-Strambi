import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  
  routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(userName: state.extra as String),
  ),
]);
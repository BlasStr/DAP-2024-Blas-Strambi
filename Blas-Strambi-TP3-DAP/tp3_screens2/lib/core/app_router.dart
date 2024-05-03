
import 'package:go_router/go_router.dart';
import '../presentation/Screens/home_screen.dart';
import '../presentation/Screens/login_screen.dart';

final appRouter = GoRouter(
  
  routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
]);
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/edit_screen.dart';


final appRouter = GoRouter(routes: [
  GoRoute(
    name: EditScreen.name,
    path: '/edit',
    builder: (context, state) => EditScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/',
    builder: (context, state) => HomeScreen(),
  ),
]);

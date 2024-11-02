import 'package:go_router/go_router.dart';
import 'package:tp_listview/core/data/games_datasource.dart';
import 'package:tp_listview/screens/detail_screen.dart';
import 'package:tp_listview/screens/home_screen.dart';
import 'package:tp_listview/screens/login_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: DetailScreen.name,
    path: '/detail',
    builder: (context, state) => DetailScreen(gameDetail: state.extra as Games),
  ),
]);

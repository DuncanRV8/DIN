import 'package:go_router/go_router.dart';
import '../../presentation/screen/screens.dart';


//para test
final appRouter2={
  '/buttons': (context) => ButtonScreen(),
  '/cards': (context) => CardScreen(),
};

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
  ],
);
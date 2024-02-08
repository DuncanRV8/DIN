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
    GoRoute(
      path: '/snackbar',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: '/uicontrols',
      builder: (context, state) => UIControlScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      builder: (context, state) => ApptutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      builder: (context, state) => InfiniteScroll(),
    ),
  ],
);
import 'package:bookly/features/home/presentation/views/book_view_details.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splasg_screen.dart';

abstract class AppRouter {
  static const String kHomeView = "/homeview";
  static const String kBookDetailsView = "/bookdetailsview";
  static const String kSearchView = "/searchview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

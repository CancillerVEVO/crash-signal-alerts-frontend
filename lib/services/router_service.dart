import 'package:go_router/go_router.dart';
import 'package:user_frontend/pages/alert_detail_page.dart';
import 'package:user_frontend/pages/alerts_page.dart';
import 'package:user_frontend/services/router_constants.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: RouterConstants.alerts,
        builder: (context, GoRouterState state) {
          final page = state.uri.queryParameters['page'] ?? '1';
          final limit = state.uri.queryParameters['limit'] ?? '10';

          return AlertsPage(
            page: page,
            limit: limit,
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'details/:id',
            name: RouterConstants.alertDetails,
            builder: (context, GoRouterState state) {
              final id = state.pathParameters['id'];

              return AlertDetailPage(
                id: id,
              );
            },
          ),
        ],
      ),
    ],
  );
}

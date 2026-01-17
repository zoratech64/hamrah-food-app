import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_food_app/config/router/route_names.dart';
import 'package:hamrah_food_app/core/observers/route_observer.dart';
import 'package:hamrah_food_app/features/splash/presentation/screens/splash_screen.dart';

final Provider<GlobalKey<NavigatorState>> globalNavigatorKey =
    Provider<GlobalKey<NavigatorState>>((Ref ref) {
      return GlobalKey<NavigatorState>();
    });

final Provider<GoRouter> goRouterProvider = Provider<GoRouter>(
  (Ref ref) => GoRouter(
    navigatorKey: ref.read(globalNavigatorKey),
    initialLocation: '/${RouteNames.instance.splash}',
    observers: <NavigatorObserver>[ref.read(routeObserverProvider)],
    routes: <RouteBase>[
      GoRoute(
        path: '/${RouteNames.instance.splash}',
        name: RouteNames.instance.splash,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),
      // GoRoute(
      //   path: '/${RouteNames.instance.signIn}',
      //   name: RouteNames.instance.signIn,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const SignInScreen(),
      // ),
      // GoRoute(
      //   path: '/${RouteNames.instance.signUp}',
      //   name: RouteNames.instance.signUp,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const SignUpScreen(),
      // ),
      // GoRoute(
      //   path: '/${RouteNames.instance.forgotPassword}',
      //   name: RouteNames.instance.forgotPassword,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const ForgotPasswordScreen(),
      // ),
      // GoRoute(
      //   path: '/${RouteNames.instance.resetPassword}',
      //   name: RouteNames.instance.resetPassword,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const ResetPasswordScreen(),
      // ),
      // StatefulShellRoute.indexedStack(
      //   builder:
      //       (
      //         BuildContext context,
      //         GoRouterState state,
      //         StatefulNavigationShell navigationShell,
      //       ) {
      //         return MainScreen(navigationShell: navigationShell);
      //       },
      //   branches: <StatefulShellBranch>[
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(
      //           path: '/${RouteNames.instance.home}',
      //           name: RouteNames.instance.home,
      //           builder: (BuildContext context, GoRouterState state) =>
      //               const HomeScreen(),
      //           redirect: (BuildContext context, GoRouterState state) =>
      //               RouteRedirections.instance.homeRedirection(ref, state),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(
      //           path: '/${RouteNames.instance.search}',
      //           name: RouteNames.instance.search,
      //           builder: (BuildContext context, GoRouterState state) =>
      //               const SearchScreen(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(
      //           path: '/${RouteNames.instance.categories}',
      //           name: RouteNames.instance.categories,
      //           builder: (BuildContext context, GoRouterState state) =>
      //               const CategoriesScreen(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(
      //           path: '/${RouteNames.instance.myList}',
      //           name: RouteNames.instance.myList,
      //           builder: (BuildContext context, GoRouterState state) =>
      //               const MyListScreen(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(
      //           path: '/${RouteNames.instance.profile}',
      //           name: RouteNames.instance.profile,
      //           builder: (BuildContext context, GoRouterState state) =>
      //               const ProfileScreen(),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      // GoRoute(
      //   path: '/${RouteNames.instance.promptDetails}',
      //   name: RouteNames.instance.promptDetails,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       PromptDetailsScreen(promptId: state.extra as String),
      // ),
      // GoRoute(
      //   path: '/${RouteNames.instance.seeAll}',
      //   name: RouteNames.instance.seeAll,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       SeeAllScreen(params: state.extra as SeeAllParams),
      // ),
      // GoRoute(
      //   path: '/${RouteNames.instance.editProfile}',
      //   name: RouteNames.instance.editProfile,
      //   builder: (BuildContext context, GoRouterState state) =>
      //       EditProfileScreen(),
      // ),
    ],
  ),
);

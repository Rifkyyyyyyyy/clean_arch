import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pratice/v.1/common/components/navigation/navigation.dart';
import 'package:pratice/v.1/constant/endpoint/endpoint_app.dart';
import 'package:pratice/v.1/domain/entities/product_entities.dart';
import 'package:pratice/v.1/presentation/page/cart_page.dart';
import 'package:pratice/v.1/presentation/page/err_pages.dart';
import 'package:pratice/v.1/presentation/page/product_detail_page.dart';
import 'package:pratice/v.1/presentation/page/profile_page.dart';
import 'package:pratice/v.1/presentation/screen/splash_screen.dart';
import 'package:pratice/v.1/presentation/view/view.dart';

final GlobalKey<NavigatorState> globalKey = GlobalKey();

GoRouter goRouter() {
  return GoRouter(
    navigatorKey: globalKey,
    initialLocation: pathEndpoint(endpoints: AppEndpoints.homepage),
    routes: [
      GoRoute(
        path: pathEndpoint(endpoints: AppEndpoints.initial),
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const MySplashScreen(),
            transitionsBuilder: (ctx, animation, secondary, child) {
              const begin = 0.0;
              const end = 1.0;
              var tween = Tween(begin: begin, end: end);
              var opacityAnimation = tween.animate(CurvedAnimation(
                parent: animation,
                curve: Curves.fastOutSlowIn,
              ));
              return FadeTransition(
                opacity: opacityAnimation,
                child: child,
              );
            },
          );
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomAppBarNav(statefulNavigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(
              path: pathEndpoint(endpoints: AppEndpoints.homepage),
              pageBuilder: (context, state) => CustomTransitionPage(
                child: const ViewApp(),
                transitionsBuilder: (ctx, animation, secondary, child) {
                  const begin = 0.0;
                  const end = 1.0;
                  var tween = Tween(begin: begin, end: end);
                  var opacityAnimation = tween.animate(CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastOutSlowIn,
                  ));
                  return FadeTransition(
                    opacity: opacityAnimation,
                    child: child,
                  );
                },
              ),
            ),
          ]),
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(
              path: pathEndpoint(endpoints: AppEndpoints.profile),
              pageBuilder: (context, state) => CustomTransitionPage(
                child: const ProfilePages(),
                transitionsBuilder: (ctx, animation, secondary, child) {
                  const begin = 0.0;
                  const end = 1.0;
                  var tween = Tween(begin: begin, end: end);
                  var opacityAnimation = tween.animate(CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastOutSlowIn,
                  ));
                  return FadeTransition(
                    opacity: opacityAnimation,
                    child: child,
                  );
                },
              ),
            ),
          ]),
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(
              path: pathEndpoint(endpoints: AppEndpoints.cart),
              pageBuilder: (context, state) => CustomTransitionPage(
                child: const CartPages(),
                transitionsBuilder: (ctx, animation, secondary, child) {
                  const begin = 0.0;
                  const end = 1.0;
                  var tween = Tween(begin: begin, end: end);
                  var opacityAnimation = tween.animate(CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastOutSlowIn,
                  ));
                  return FadeTransition(
                    opacity: opacityAnimation,
                    child: child,
                  );
                },
              ),
            ),
          ]),
        ],
      ),
      GoRoute(
        path: '${pathEndpoint(endpoints: AppEndpoints.productPage)}/:params',
        pageBuilder: (context, state) {
           final ProductEntity? productEntity = state as ProductEntity?;
          if (productEntity != null) {
            return CustomTransitionPage(
              child: ProductDetailScreen(productEntity: productEntity),
              transitionsBuilder: (ctx, animation, secondary, child) {
                const begin = 0.0;
                const end = 1.0;
                var tween = Tween(begin: begin, end: end);
                var opacityAnimation = tween.animate(CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastOutSlowIn,
                ));
                return FadeTransition(
                  opacity: opacityAnimation,
                  child: child,
                );
              },
            );
          } else {
            return CustomTransitionPage(
              child: const ErrorPages(),
              transitionsBuilder: (ctx, animation, secondary, child) {
                const begin = 0.0;
                const end = 1.0;
                var tween = Tween(begin: begin, end: end);
                var opacityAnimation = tween.animate(CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastOutSlowIn,
                ));
                return FadeTransition(
                  opacity: opacityAnimation,
                  child: child,
                );
              },
            );
          }
        },
      ),
    ],
  );
}

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_web_app_sample/auth_guard.dart';
import 'package:flutter_web_app_sample/main.dart';
import 'package:flutter_web_app_sample/pages.dart';



@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Landing, initial: true),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegistrationPage, path: '/register'),
    RedirectRoute(path: '', redirectTo: '/login'),

    AutoRoute(
        name: "MyAccountRouter",
        path: "/acc",
        guards: [AuthGuard],
        page: MyAccountPage,
        children: [
          AutoRoute(path: 'dashboard', page: DashboardPage),
          AutoRoute(path: 'settings', page: SettingsScreen),
          RedirectRoute(path: '', redirectTo: 'dashboard'),
          AutoRoute(path: '*', page: PageNotFound),
        ])
  ],
)
class $AppRouter {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'auth_guard.dart' as _i3;
import 'main.dart' as _i5;
import 'pages.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Landing.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.Landing());
    },
    LoginRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginPage());
    },
    RegistrationRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RegistrationPage());
    },
    MyAccountRouter.name: (routeData) {
      final args = routeData.argsAs<MyAccountRouterArgs>(
          orElse: () => const MyAccountRouterArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.MyAccountPage(key: args.key, title: args.title));
    },
    DashboardRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.DashboardPage());
    },
    SettingsScreen.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.SettingsScreen());
    },
    RouteNotFound.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.PageNotFound());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Landing.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(RegistrationRoute.name, path: '/register'),
        _i1.RouteConfig('#redirect',
            path: '', redirectTo: '/login', fullMatch: true),
        _i1.RouteConfig(MyAccountRouter.name, path: '/acc', guards: [
          authGuard
        ], children: [
          _i1.RouteConfig(DashboardRoute.name, path: 'dashboard'),
          _i1.RouteConfig(SettingsScreen.name, path: 'settings'),
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'dashboard', fullMatch: true),
          _i1.RouteConfig(RouteNotFound.name, path: '*')
        ])
      ];
}

class Landing extends _i1.PageRouteInfo {
  const Landing() : super(name, path: '/');

  static const String name = 'Landing';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

class RegistrationRoute extends _i1.PageRouteInfo {
  const RegistrationRoute() : super(name, path: '/register');

  static const String name = 'RegistrationRoute';
}

class MyAccountRouter extends _i1.PageRouteInfo<MyAccountRouterArgs> {
  MyAccountRouter(
      {_i2.Key? key, String? title, List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/acc',
            args: MyAccountRouterArgs(key: key, title: title),
            children: children);

  static const String name = 'MyAccountRouter';
}

class MyAccountRouterArgs {
  const MyAccountRouterArgs({this.key, this.title});

  final _i2.Key? key;

  final String? title;
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute() : super(name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

class SettingsScreen extends _i1.PageRouteInfo {
  const SettingsScreen() : super(name, path: 'settings');

  static const String name = 'SettingsScreen';
}

class RouteNotFound extends _i1.PageRouteInfo {
  const RouteNotFound() : super(name, path: '*');

  static const String name = 'RouteNotFound';
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter_web_app_sample/auth.dart';

bool isAuthenticated = false;

class AuthGuard extends AutoRouteGuard {

  final AuthProvider authProvider;

  AuthGuard(this.authProvider);


  @override
  Future<bool> canNavigate(
      List<PageRouteInfo> pendingRoutes, StackRouter router) async {
    if (!authProvider.isAuthenticated()) {
      router.pushNamed("/login");
      return false;
    }
    return true;
  }
}

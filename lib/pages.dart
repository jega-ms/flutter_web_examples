import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("Landing page ->  ${RouteData.of(context).name}"));
  }
}

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("${RouteData.of(context).path} page not found."));
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("DashboardPage->  ${RouteData.of(context).name}"));
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("SettingsScreen->  ${RouteData.of(context).name}"));
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("LoginPage ->  ${RouteData.of(context).name}"));
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("RegistrationPage ->  ${RouteData.of(context).name}"));
  }
}

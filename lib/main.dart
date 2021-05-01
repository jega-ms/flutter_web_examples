import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app_sample/auth.dart';
import 'package:flutter_web_app_sample/auth_guard.dart';
import 'package:flutter_web_app_sample/router.gr.dart';


AuthProvider provider = new AuthProvider();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final _appRouter = AppRouter(authGuard: new AuthGuard(provider)) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}

class MyAccountPage extends StatefulWidget {
  MyAccountPage({Key? key, this.title}) : super(key: key);
  String? title;
  @override
  State<StatefulWidget> createState() {
    return MyAccountPageState();
  }
}

class MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto Route Test"),
      ),
      body: AutoRouter(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                AutoRouter.of(context).pushNamed("/acc/dashboard");
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                AutoRouter.of(context).pushNamed("/acc/settings");
              },
            ),
          ],
        ),
      ),
    );
  }
}


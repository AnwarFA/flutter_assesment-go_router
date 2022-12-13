import 'package:flutter/material.dart';
import 'package:flutter_ass_go_router/pages/home_page.dart';
import 'package:flutter_ass_go_router/pages/login_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/HomeScreen',
    builder: (context, state) => HomePage(username: state.extra as String),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => LoginPage(),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Assesment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: LoginPage(),
      routerConfig: router,
    );
  }
}

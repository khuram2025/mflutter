import 'package:flutter/material.dart';
import 'package:mfluter/pages/home_page.dart';
import 'package:mfluter/pages/login_page.dart';
import 'package:mfluter/utils/routes.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/": (context) => HomePage(),
        // MyRoutes.loginRoute : (context)=> LoginPage(),
        MyRoutes.homeRoute : (context)=> HomePage(),
      },
    );
  }
}

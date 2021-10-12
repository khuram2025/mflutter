import 'package:flutter/material.dart';

class Mytheme{

  static ThemeData lightTheme(BuildContext context) => ThemeData(primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
          centerTitle: true
      ));
}
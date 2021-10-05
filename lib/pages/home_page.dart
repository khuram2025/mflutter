import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  int days = 27;
  final String name = "Khan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

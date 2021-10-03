import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int days = 25;
  final String name = "Khan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      drawer: Drawer(),

      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter"),
        ),
      ),
    );
  }
}

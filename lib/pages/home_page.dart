import 'package:flutter/material.dart';
import 'package:mfluter/models/catalog.dart';
import 'package:mfluter/pages/widgets/drawer.dart';

import 'widgets/item_widget.dart';

class HomePage extends StatelessWidget {

  int days = 27;
  final String name = "Khan";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: List_Custom()));
}

class List_Custom extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(
              // [
              //   const Card(color: Colors.red,child: Center(child: Icon(Icons.add),),),
              //   const Card(color: Colors.green,child: Center(child: Icon(Icons.add),),),
              //   const Card(color: Colors.yellow,child: Center(child: Icon(Icons.add),),),
              //   const Card(color: Colors.purple,child: Center(child: Icon(Icons.add),),)
              // ]
              List.generate(
                  20,
                  (index) => Card(
                      color: colors[index],
                      child: const Center(
                        child: Icon(Icons.add),
                      ))))),
    );
  }
}

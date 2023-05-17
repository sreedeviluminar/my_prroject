import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Grid1()));
}

class Grid1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView 1"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 30, mainAxisSpacing: 30),
          children: List.generate(
            10,
            (index) => Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: colors[index],
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(2, 8)),
                ],
              ),
              //color: colors[index],
              child: const Center(
                child: Text("Hello"),
              ),
            ),
          )
          //const [
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          // ],
          ),
    );
  }

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
  ];
}

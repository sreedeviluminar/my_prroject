import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_Builder(),
  ));
}

class Grid_Builder extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          childAspectRatio: 1,
      crossAxisCount: 2,
      children: List.generate(20,
        (index) => Container(
          color: colors[index],
          child: const Center(
            child: Text("Hello"),
          ),
        ),
      ),
    ));
  }
}

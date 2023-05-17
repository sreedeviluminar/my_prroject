import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.green),
            Container(
              color: Colors.red,
              height: 350,
              width: 350,
            ),
            Container(
              color: Colors.yellow,
              height: 200,
              width: 200,
            ),
            Positioned(
                top: 450,
                left: 300,
                child: Container(
                  color: Colors.purple,
                  height: 100,
                  width: 100,
                ))
          ],
        ),
      ),
    );
  }
}

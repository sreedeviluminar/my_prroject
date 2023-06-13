import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExpandedEx()));
}

class ExpandedEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Row(
        children: [
          Container(height:200,width:200,color: Colors.green,),
          Container(height:100,width:100,color: Colors.red,),
          Expanded(child: Container(height:50,width:50,color: Colors.yellow,))
        ],
      )
    );
  }
}

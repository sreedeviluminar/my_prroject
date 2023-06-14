import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  String? v1, v2;
  int? v3;

  StatelessPage({super.key, required this.v1, this.v2, this.v3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(v1!),
      ),
      body: Center(
        child:
        Text("I am studying in $v1 located ate $v2 contact $v3",
        style: const TextStyle(fontSize: 30),),
      ),
    );
  }
}

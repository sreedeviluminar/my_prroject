import 'package:flutter/material.dart';

class StatefullPage extends StatefulWidget {
  final String? v1, v2;
  final int? v3;
  const StatefullPage({super.key ,this.v1, this.v2, this.v3});

  @override
  State<StatefullPage> createState() => _StatefullPageState();
}

class _StatefullPageState extends State<StatefullPage> {

  @override
  Widget build(BuildContext context) {

    String? v1 = widget.v1;

    return Scaffold(
      appBar: AppBar(
        title: Text(v1!),
      ),
      body: Center(
        child: Text(
          "I am studying in $v1 located ate ${widget.v2} contact ${widget.v3}",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

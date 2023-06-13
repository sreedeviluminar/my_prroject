import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SimpleAnimation()));
}

class SimpleAnimation extends StatefulWidget {
  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 12, end: 100).animate(controller!)
      ..addListener(() {
        setState(() {});
      });
  }

  void increaseSize() {
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Hello All",
              style: TextStyle(fontSize: animation?.value),
            ),
          ),
          ElevatedButton(
              onPressed: () => increaseSize(), child: Text("Increase Size"))
        ],
      ),
    );
  }
}

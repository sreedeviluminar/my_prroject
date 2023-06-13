import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(home: RiveeeAnimation()));
}

class RiveeeAnimation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: 
        // RiveAnimation.asset(
        //   'assets/animation/octopus-loop.riv',
        // ),
        RiveAnimation.network("https://public.rive.app/community/runtime-files/5175-10406-bug-emoji-1.riv")
      ),
    );
  }
}

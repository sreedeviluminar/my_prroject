import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
      home: LottieAnimation(),
  ));
}

class LottieAnimation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         width: double.infinity,
         height: double.infinity,
        child:Lottie.network("https://assets10.lottiefiles.com/packages/lf20_OulSMgDF46.json")
        //Lottie.asset("assets/animation/forest-morning.json",fit: BoxFit.fill),
      ),
    );
  }
}

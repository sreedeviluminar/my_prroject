import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FittedBoxEx()));
}

class FittedBoxEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit:BoxFit.cover,
            alignment:Alignment.center ,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
              child: Row(
                children: [
                  Container(
                    child: const Text("Fitted Box Example",style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                  // height: MediaQuery.of(context).size.height / 2,
                    child: Image.asset("assets/images/img_1.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExpandedEx()));
}

class ExpandedEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: const Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: TextStyle(fontSize: 100),
            ),
            Icon(
              Icons.account_box_sharp,
              size: 100,
            ),
            Expanded(
                child: Image(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}

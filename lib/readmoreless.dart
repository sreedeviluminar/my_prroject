import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MaterialApp(home: ReadMoreLess()));
}

class ReadMoreLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 70.0, left: 20, right: 30),
        child: Column(
          children: [
            ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 2,
              preDataText: "AMANDA",
              preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
              style: TextStyle(color: Colors.black),
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...Show more',
              trimExpandedText: ' show less',
            ),
            ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 2,
              preDataText: "AMANDA",
              preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
              style: TextStyle(color: Colors.black),
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...Show more',
              trimExpandedText: ' show less',
            ),
          ],
        ),
      ),
    );
  }
}

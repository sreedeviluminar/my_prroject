import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Color? bcolor;
  final Image? image;
  VoidCallback? onpress;
  Widget? label;

  MyWidget({
    this.bcolor,
    required this.image,
    this.onpress,
    this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bcolor,
      child: ListTile(
        title: label,
        leading: image,
        onTap: onpress,
      ),
    );
  }
}

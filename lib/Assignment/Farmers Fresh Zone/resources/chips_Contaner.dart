import 'package:flutter/material.dart';

class ChipsContainer extends StatelessWidget {
  const ChipsContainer({
    Key? key,
    required this.chips,
  }) : super(key: key);

  final List chips;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff4f4f4),
      height: 50,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 10),
        itemCount: chips.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Chip(
              labelStyle: const TextStyle(color: Color(0xff186439)),
              label: Text(chips[index]),
              labelPadding: const EdgeInsets.symmetric(horizontal: 15),
              backgroundColor: const Color(0xffdbefe6),
              shape: const StadiumBorder(
                  side: BorderSide(width: 1, color: Color(0xffcde0d5)))),
        ),
      ),
    );
  }
}

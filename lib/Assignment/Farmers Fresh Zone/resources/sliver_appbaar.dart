import 'package:flutter/material.dart';

class SliverAppbarContent extends StatelessWidget {
  const SliverAppbarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Color(0xff01b748),
      title: const Text('FARMERS FRESH ZONE'),
      titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      actions: [
        Row(
          children: const [
            Icon(Icons.location_on_outlined),
            Text(
              'KOCHI',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_drop_down),
            )
          ],
        )
      ],
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                decoration: InputDecoration(

                    // contentPadding: EdgeInsets.all(0.0),
                    isDense: true,
                    prefixIcon: Icon(Icons.search),
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 30, minWidth: 30),
                    constraints: BoxConstraints(minHeight: 10),
                    border: InputBorder.none,
                    focusColor: Color(0xff01b748),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Search for Vegetables, Fruits...'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

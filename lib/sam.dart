import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(home: UiAss()), // Wrap your app
);

class UiAss extends StatefulWidget {
  @override
  State<UiAss> createState() => _UiAssState();
}

class _UiAssState extends State<UiAss> {
  List<String> loc = ['Alappuzha', 'Kayamkulam', 'Kochi'];
  String value = 'Alappuzha';

  DropdownMenuItem<String> loc_Items(String item) {
    return DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FARMERS FRESH ZONE'),
        actions: [
          DropdownButton(
              value: value,
              items: loc.map(loc_Items).toList(),
              onChanged: (newValue) {
                setState(() {
                    value = newValue!;
                  },
                );
              }),
        ],
      ),
      body: const Center(child: Text('data')),
    );
  }
}
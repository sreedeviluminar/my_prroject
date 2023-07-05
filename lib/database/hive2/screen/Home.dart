import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String? email;
  Home({required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome $email",style: TextStyle(fontSize:30),),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginPage.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();// to convert myapp which is currently immutable to a mutable state
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,

        ///setting background
        //color: Colors.black,
        decoration: const BoxDecoration(
            //color: Colors.lightBlue
            // image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage("assets/images/img_1.png")
            // )
            gradient: LinearGradient(colors: [
          Colors.purpleAccent,
          Colors.indigo,
          Colors.blue,
          Colors.green,
          Colors.yellow,
          Colors.yellow,
          Colors.red
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.ac_unit_outlined,size: 50,color: Colors.lightBlue,),
              Image.asset(
                "assets/icons/easter.png",
                height: 200,
                width: 200,
              ),
              // Image.network(
              //     "https://images.unsplash.com/photo-1608145417898-a0eb7cc1cfc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              Text("MY APP",
                  style: GoogleFonts.lobsterTwo(
                      color: Colors.deepOrange,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)
                  // style: TextStyle(
                  //   fontSize: 30,
                  //   color: Colors.deepOrange,
                  //   fontWeight: FontWeight.bold,
                  //   fontStyle: FontStyle.italic,
                  // ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

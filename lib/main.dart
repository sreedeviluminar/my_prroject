import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true, home: MyApp()), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
               Text(
                "MY APP",
                style: GoogleFonts.lobsterTwo(
                  color: Colors.deepOrange,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                )
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

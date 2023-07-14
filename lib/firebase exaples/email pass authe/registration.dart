import 'package:flutter/material.dart';

class RegistrationFire extends StatefulWidget {
  const RegistrationFire({super.key});

  @override
  State<RegistrationFire> createState() => _RegistrationFireState();
}

class _RegistrationFireState extends State<RegistrationFire> {
  final email = TextEditingController();
  final pass  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title :Text("Registration")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pass,
            ),
          ),
          ElevatedButton(onPressed: (){

          }, child: Text('Register'))
        ],
      ),
    );
  }
}

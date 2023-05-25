import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExitAppAlert()));
}

class ExitAppAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Exit?!!!!!!!!!!"),
                content: const Text("Do u really want to Exit"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text("Yes")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("No")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("Cancel"))
                ],
              ));
    }

    return WillPopScope(
        onWillPop: showAlert,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Exit from the app"),
          ),
          body: const Center(
            child: Text("press Back Button To Exit"),
          ),
        ));
  }
}

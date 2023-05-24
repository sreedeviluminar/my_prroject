import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheet(),
  ));
}
class BottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet"),),
      body: Center(
        child: GestureDetector(
            onLongPress: () => showSheet(context),
            child: Icon(Icons.share, size: 50, color: Colors.blue,)),
      ),
    );
  }
  void showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        elevation: 3,
        builder: (context) => Container(
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: FaIcon(FontAwesomeIcons.squareWhatsapp,color: Colors.green,),
                title: Text("WhatsApp"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.squareFacebook,color: Colors.blueAccent,),
                title: Text("Facebook"),
              ),
              ListTile(
                    leading: FaIcon(FontAwesomeIcons.solidMessage),
                title: Text("Message"),
              )
            ],
          ),
        ));
  }

}

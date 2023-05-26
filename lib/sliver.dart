import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            title: const Text("Sliver AppBar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Here',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    color: Colors.green),
                    height: 100,
                        child: Center(child: Text('Inside Sliver list $index',
                            style: TextStyle(fontSize: 20))),
                      ),
                ),
                childCount: 20),
          )
        ],
      ),
    );
  }
}

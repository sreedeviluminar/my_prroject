import 'package:flutter/material.dart';
import 'package:my_prroject/Statemanagement/providerrr/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class WishList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var mywishlist = context.watch<MovieProvider>().movieswish;

    return Scaffold(
      appBar: AppBar(title: Text('${mywishlist.length}'),),
      body: ListView.builder(
          itemCount: mywishlist.length,
          itemBuilder: (context,index){
          final movie = mywishlist[index];
          return Card(
            child:  ListTile(
              title: Text(movie.title),
              subtitle: Text(movie.time ?? 'No Time'),
              trailing: TextButton(onPressed: (){
                context.read<MovieProvider>().removeFromList(movie);
              }, child: Text("Remove")),
            ),
          );
      }),
    );
  }
}

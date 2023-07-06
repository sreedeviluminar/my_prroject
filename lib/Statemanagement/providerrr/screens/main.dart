import 'package:flutter/material.dart';
import 'package:my_prroject/Statemanagement/providerrr/provider/movie_provider.dart';
import 'package:my_prroject/Statemanagement/providerrr/screens/wishlist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MovieProvider>(
      create: (BuildContext context) => MovieProvider(),
      child: MaterialApp(
        home: MainPage(),
      ),
    ),
  );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// list for wishlist page
    var myflist = context.watch<MovieProvider>().movieswish;

    /// list fro main page
    var movies = context.watch<MovieProvider>().movies;

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (contex) => WishList()));
                },
                icon: Icon(Icons.favorite),
                label: Text("My Favorite ${myflist.length}")),
            Expanded(
                child: ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      // movies is a list<Map>  currentmovie is map
                      final currentmovie = movies[index];
                      return Card(
                        child: ListTile(
                          title: Text(currentmovie.title),
                          subtitle: Text(currentmovie.time ?? 'No time'),
                          trailing: IconButton(
                            icon: Icon(Icons.favorite),
                            color: myflist.contains(currentmovie)
                                ? Colors.red
                                : Colors.white,
                            onPressed: () {
                              if (!myflist.contains(currentmovie)) {
                                context
                                    .read<MovieProvider>()
                                    .addTolist(currentmovie);
                              }else{
                                context
                                    .read<MovieProvider>()
                                    .removeFromList(currentmovie);
                              }
                            },
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

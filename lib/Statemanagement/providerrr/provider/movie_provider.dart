import 'dart:math';
import 'package:flutter/material.dart';
import '../model/movie.dart';

final List<Movie> movieList = List.generate(
    100,
    (index) => Movie(
        title: 'Movie $index', time: "${Random().nextInt(100) + 60} minutes"));

class MovieProvider with ChangeNotifier {

  final List<Movie> _movie = movieList; // data that we created using List.generate
  List<Movie> get movies => _movie; //data for main page

  final List<Movie> _moviewishlist = []; // data for wishlist
  List<Movie> get movieswish => _moviewishlist; //  get values from wishlist

  void addTolist(Movie moviefrommainPage) {
    _moviewishlist.add(moviefrommainPage);
    notifyListeners();
  }

  void removeFromList(Movie removedmovie) {
    _moviewishlist.remove(removedmovie);
    notifyListeners();
  }
}

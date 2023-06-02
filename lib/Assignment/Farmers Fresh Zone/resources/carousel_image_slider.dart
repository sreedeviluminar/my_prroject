import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImageSlider extends StatelessWidget {
  const CarouselImageSlider({
    required this.carouselItemsList,
  });

  final List carouselItemsList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          carouselItemsList[index],
        ))),
      ),
      itemCount: carouselItemsList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 16 / 7,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'customer_reviews_container.dart';

class ReviewCarrousel extends StatelessWidget {
  List reviewCarrouselList = [
    {
      'Name': 'Rinish k n',
      'Designation': 'cto , RappidValue',
      'image': 'assets/images/pic1.jpg',
      'reviewText':
          'I was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
    },
    {
      'Name': 'Dinesh Thampi',
      'Designation': 'VP Operations, TCS',
      'image': 'assets/images/pic2.jpg',
      'reviewText':
          'Being a customer of Farmers Fresh Zone, I can definitely say that I am extremely pleased with their service. You can choose from a wide range of "safe-to-eat" products, all of which are 100% Fresh & Natural. I appreciate their efforts in providing healthy food to the customer & helping the livelihood of farmers at the same time.',
    },
    {
      'Name': 'Prince P I',
      'Designation': 'Online digital marketing business',
      'image': 'assets/images/pic3.jpg',
      'reviewText':
          'As concerned parents. we wanted our kids to eat pesticide-free & healthy food and thats how we came across Farmers Fresh Zone. Their fresh products &  prompt delivery is the reason we have been a part of the Farmers Fresh Zone family for almost three years now. Farmers Fresh Zone is the best solution to countless concerned parents like us! ',
    },
    {
      'Name': 'Hrishikesh Nair',
      'Designation': 'CEO , Infopark',
      'image': 'assets/images/pic4.jpg',
      'reviewText':
          'I was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => CustomerReviews(
        Name: reviewCarrouselList[index]['Name'],
        Designation: reviewCarrouselList[index]['Designation'],
        image: reviewCarrouselList[index]['image'],
        reviewText: reviewCarrouselList[index]['reviewText'],
      ),
      itemCount: reviewCarrouselList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 1.6,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}

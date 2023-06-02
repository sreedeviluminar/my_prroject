

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/Blogs_List_Builder.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/Category_grid.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/Store_Item_Grid.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/carousel_image_slider.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/certified_badge_container.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/chips_Contaner.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/review_corrousel.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/sliver_appbaar.dart';
import 'package:my_prroject/Assignment/Farmers%20Fresh%20Zone/resources/top_icon_card.dart';

class FarmersFreshZone extends StatelessWidget {
  static String id = 'Shopping_Cart';
  List chips = [
    'OFFERS',
    'VEGETABLES',
    'FRUITS',
    'EXOTIC',
    'FRESH CUTS',
    'NUTRITION CHARGERS',
    'PACKED FLACOURS',
    'GOURMETS SALADS'
  ];

  List topCarouselItemsList = [
    'assets/shopping cart/main.jpg',
    'assets/shopping cart/main3.jpg',
    'assets/shopping cart/main4.jpg',
    'assets/shopping cart/main5.jpg',
  ];
  List bottomCarouselItemsList = [
    'assets/shopping cart/banner.jpg',
    'assets/shopping cart/banner2.jpg',
  ];
  List categoryImageList = [
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1638787119/Product/jghu86qgjdtnsvlyvnkl.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435631/Product/ujnkolanbenh0c9yfmq9.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/c_scale,h_250,w_250/c_scale,w_2081/v1598435765/Product/tssgwn0eeejipf8mhfd2.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647846649/product/szrvdnx1hccgow8ik5if.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933526/product/t4fr66dtajglazzhffia.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/t_media_thumb/v1647933525/product/kayzgbtyrzup3uiiflhu.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/c_limit,h_250,w_250/v1647933527/product/zvdh4kjocprnhr7zm2di.jpg',
    'https://res.cloudinary.com/farmersfreshzone/image/upload/v1656304012/product/na8yccnwj6ekyce8b5z8.jpg'
  ];

  List StoreItems = [
    {
      'Image': 'https://www.farmersfz.com/assets/public/vegimg/CART8.jpg',
      'Name': 'Carrot',
      'Rate': '34',
      'Qty': '0.05kg',
    },
    {
      'Image': 'https://www.farmersfz.com/assets/public/vegimg/BNAN6.jpg',
      'Name': 'Banana',
      'Rate': '34.5',
      'Qty': '0.05kg',
    },
    {
      'Image': 'https://www.farmersfz.com/assets/public/vegimg/Brc.jpg',
      'Name': ' Broccoli Florets 200gm',
      'Rate': '99',
      'Qty': '1.00 NOS',
    },
    {
      'Image': 'https://www.farmersfz.com/assets/public/vegimg/PTTO8.jpg',
      'Name': 'potato',
      'Rate': '23',
      'Qty': '0.05kg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppbarContent(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ChipsContainer(chips: chips),
                CarouselImageSlider(carouselItemsList: topCarouselItemsList),
                const TopIconCardContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Shop By Category',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                StoreCategoryCardGrid(
                    CarouselItemsList: categoryImageList, chips: chips),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(width: 3, color: Color(0xffcde0d5)))),
                  child: CarouselImageSlider(
                      carouselItemsList: bottomCarouselItemsList),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    'Best selling products',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                StoreItemGrid(StoreItems: StoreItems),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'VIEW MORE',
                    style: TextStyle(color: Color(0xff01b748)),
                  ),
                ),
                const CertifiedBadgeContainer(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Our Blog Posts',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                ),
                BlogsListBuilder(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'VIEW MORE',
                    style: TextStyle(color: Color(0xff01b748)),
                  ),
                ),
                const Divider(
                  thickness: 8,
                  color: Color(0xffcde0d5),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'What Our Customers Say',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                ),
                ReviewCarrousel(),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
                  child: Text(
                    'This Kochi-Based-farm-to-fork online marketplace is connecting farmers directly to customers',
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 1.5, fontSize: 13),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/9/9a/The_Economic_Times_logo.png',
                      width: 100,
                    ),
                    Image.network(
                      'https://files.startupranking.com/startup/thumb/8034_2064627540c3c27254a71b819c5011a6bb226729_yourstory_m.png',
                      width: 50,
                    ),
                    Image.network(
                      'https://marketing.readwhere.com/newindian-logo.png',
                      width: 60,
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Manorama_News.svg/150px-Manorama_News.svg.png',
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 8,
                  color: Color(0xffcde0d5),
                ),
                const ListTile(
                  title: Text(
                    'Get To Know Us',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                  subtitle: Wrap(
                    children: [
                      Text('About Us   |', style: TextStyle(fontSize: 10)),
                      SizedBox(width: 10),
                      Text('About Us   |', style: TextStyle(fontSize: 10)),
                      SizedBox(width: 10),
                      Text('About Us  ', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Useful Links',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                  subtitle: Wrap(
                    children: [
                      Text('Privacy Policy   |',
                          style: TextStyle(fontSize: 10)),
                      SizedBox(width: 10),
                      Text('Return & Refund Policy   |',
                          style: TextStyle(fontSize: 10)),
                      SizedBox(width: 10),
                      Text('Terms & Condition  ',
                          style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 30),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 30),
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 30),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: const Color(0xff01b748),
                  child: const Text(
                      'Copyright © 2023 Farmers Fresh Zone . All Rights Reserved. V 2.40.22',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10, color: Colors.white)),
                )
              ],
            ),
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff01b748),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.energy_savings_leaf,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_checkout_outlined,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),
    );
  }
}

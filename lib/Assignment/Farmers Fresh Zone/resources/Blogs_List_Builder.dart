import 'package:flutter/material.dart';

class BlogsListBuilder extends StatelessWidget {
  List blogContent = [
    {
      'image':
          'https://blog.farmersfz.com/content/images/size/w1000/2022/08/marcelo-leal-k7ll1hpdhFA-unsplash.jpg',
      'title': 'Control Blood Pressure, the right way!',
      'time': '1 months ago',
    },
    {
      'image':
          'https://blog.farmersfz.com/content/images/size/w600/2022/07/mockup-graphics-l55IGtwI8mI-unsplash.jpg',
      'title': 'Five reasons why Broccoli should be a part of your diet!',
      'time': '2 months ago',
    },
    {
      'image':
          'https://blog.farmersfz.com/content/images/2022/07/towfiqu-barbhuiya-C-zwLtPSErc-unsplash.jpg',
      'title':
          'Five tips that prevent you from going “Achhooooooo” 🤧 this Monsoon!',
      'time': '3 months ago',
    },
    {
      'image':
          'https://blog.farmersfz.com/content/images/size/w1000/2022/06/sharon-pittaway-KUZnfk-2DSQ-unsplash.jpg',
      'title': 'Best Vegetable Juices For Your Health',
      'time': '4 months ago',
    },
    {
      'image':
          'https://blog.farmersfz.com/content/images/size/w600/2022/04/chol.png',
      'title': 'Cholesterol & human the body',
      'time': '5 months ago',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: blogContent.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          late String title;
          late String text = blogContent[index]['title'];
          if (text.length < 30) {
            title = text;
          } else {
            title = text.replaceRange(35, text.length, '...');
          }

          return Container(
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffcde0d5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(blogContent[index]['image']))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                ),
                SizedBox(
                  width: 160,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    title: Text(blogContent[index]['time']),
                    trailing: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff01b748),
                    ),
                    dense: true,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}

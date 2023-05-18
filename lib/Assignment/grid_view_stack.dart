import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridViewStackScreen(),));
}

class GridViewStackScreen extends StatelessWidget {
  static String id = 'GridView_StackScreen';
  List contentList = [
    [
      'https://images.pexels.com/photos/2422588/pexels-photo-2422588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'USA'
    ],
    [
      'https://images.pexels.com/photos/1717070/pexels-photo-1717070.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'England'
    ],
    [
      'https://images.pexels.com/photos/57901/pexels-photo-57901.jpeg?auto=compress&cs=tinysrgb&w=600',
      'India'
    ],
    [
      'https://images.pexels.com/photos/8285167/pexels-photo-8285167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'India'
    ],
    [
      'https://images.pexels.com/photos/3631051/pexels-photo-3631051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'France'
    ],
    [
      'https://images.pexels.com/photos/313782/pexels-photo-313782.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'New York'
    ],
    [
      'https://images.pexels.com/photos/11259542/pexels-photo-11259542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Canada'
    ],
    [
      'https://images.pexels.com/photos/11448162/pexels-photo-11448162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Germany'
    ],
    [
      'https://images.pexels.com/photos/11709704/pexels-photo-11709704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Manchester'
    ],
    [
      'https://images.pexels.com/photos/711193/pexels-photo-711193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Singapore'
    ],
    [
      'https://images.pexels.com/photos/2422588/pexels-photo-2422588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'USA'
    ],
    [
      'https://images.pexels.com/photos/1717070/pexels-photo-1717070.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'England'
    ],
    [
      'https://images.pexels.com/photos/57901/pexels-photo-57901.jpeg?auto=compress&cs=tinysrgb&w=600',
      'India'
    ],
    [
      'https://images.pexels.com/photos/8285167/pexels-photo-8285167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'India'
    ],
    [
      'https://images.pexels.com/photos/3631051/pexels-photo-3631051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'France'
    ],
    [
      'https://images.pexels.com/photos/313782/pexels-photo-313782.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'New York'
    ],
    [
      'https://images.pexels.com/photos/11259542/pexels-photo-11259542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Canada'
    ],
    [
      'https://images.pexels.com/photos/11448162/pexels-photo-11448162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Germany'
    ],
    [
      'https://images.pexels.com/photos/11709704/pexels-photo-11709704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Manchester'
    ],
    [
      'https://images.pexels.com/photos/711193/pexels-photo-711193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Singapore'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Stack Task'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: contentList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 150,
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) =>
            Stack(
              children: [
              Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                  contentList[index][0],
                  )
                ),
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(8.0),
                //   child: Image.network(
                //     contentList[index][0],
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  contentList[index][1],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )
              ],
            ),
      ),
    );
  }
}

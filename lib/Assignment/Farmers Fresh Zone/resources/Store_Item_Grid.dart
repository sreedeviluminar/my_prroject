import 'package:flutter/material.dart';

class StoreItemGrid extends StatelessWidget {
  const StoreItemGrid({
    Key? key,
    required this.StoreItems,
  }) : super(key: key);

  final List StoreItems;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: StoreItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: .85,
          crossAxisCount: 2),
      itemBuilder: (context, index) => Container(
        decoration:
            BoxDecoration(border: Border.all(color: const Color(0xffcde0d5))),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(StoreItems[index]['Image']))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(StoreItems[index]['Name']),
              SizedBox(
                height: 10,
              ),
              Text(
                '₹${StoreItems[index]['Rate']}',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(StoreItems[index]['Qty']),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 25),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff01b748)),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 14),
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

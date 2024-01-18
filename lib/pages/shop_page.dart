import 'package:e_comm_1/components/shoe_tile.dart';
import 'package:e_comm_1/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //  MESSAGE
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Everyone flies... Some fly longer than others.',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),

        //  HOT PICS
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Pics 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        //CARDS SECTION
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  //CREATE A SHOE
                  Shoe shoe = Shoe(
                      name: 'Air Jorden',
                      price: '240',
                      imagePath: 'lib/images/shoespng.parspng.com_.png',
                      description: 'Cool Shoe');
                  return ShoeTile(
                    shoe: shoe,
                  );
                })),
      ],
    );
  }
}

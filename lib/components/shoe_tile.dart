import 'package:e_comm_1/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SHOE PIC
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          //DESC
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),

          //PRICE + DETAILS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(shoe.name),
                  Text(shoe.price),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: (Radius.circular(12)),
                  ),
                ),
              ),
            ],
          )

          //ADD TO CART BTN
        ],
      ),
    );
  }
}

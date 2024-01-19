import 'package:e_comm_1/components/cart_item.dart';
import 'package:e_comm_1/models/cart.dart';
import 'package:e_comm_1/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),

            // Expanded(child: ListView.builder(itemBuilder: (BuildContext context, int index) {

            //   return null;
            //   },),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //LIST OF SHOES FOR SALE
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Jap Sazzy',
      price: '255',
      imagePath: 'lib/images/shoespng.parspng.com_.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    Shoe(
      name: 'Carl Trex',
      price: '265',
      imagePath: 'lib/images/shoespng.parspng.com-6.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    Shoe(
      name: 'Sallix',
      price: '400',
      imagePath: 'lib/images/shoespng.parspng.com-5.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    Shoe(
      name: 'JRed',
      price: '350',
      imagePath: 'lib/images/shoespng.parspng.com-12.png',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
  ];
  //LIST OF ITEMS IN USER CART
  List<Shoe> userCart = [];
  //GET LIST OF SHOES FOR SALE
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //GET CART
  List<Shoe> getuserCart() {
    return userCart;
  }

  //ADD ITEMS TO CART
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //REMOVE ITEMS FROM CART
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

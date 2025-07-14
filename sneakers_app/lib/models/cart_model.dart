import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe_model.dart';

class CartModel extends ChangeNotifier{
  // list of shoe for sale
  List<ShoeModel> shoeShop = [
    ShoeModel(
      name: "Sneakers 1",
      price: "1500",
      description:
          "The Description of shoe.Its quality, size, color, and many more.",
      imagePath: "assets/images/one.png",
    ),
    ShoeModel(
      name: "Sneakers 2",
      price: "1800",
      description:
          "The Description of shoe.Its quality, size, color, and many more.",
      imagePath: "assets/images/three.png",
    ),
    ShoeModel(
      name: "Sneakers 3",
      price: "2200",
      description:
          "The Description of shoe.Its quality, size, color, and many more.",
      imagePath: "assets/images/one.png",
    ),
    ShoeModel(
      name: "Sneakers 4",
      price: "3000",
      description:
          "The Description of shoe.Its quality, size, color, and many more.",
      imagePath: "assets/images/three.png",
    ),
    ShoeModel(
      name: "Sneakers 5",
      price: "3500",
      description:
          "The Description of shoe.Its quality, size, color, and many more.",
      imagePath: "assets/images/one.png",
    ),
    ShoeModel(
      name: "Sneakers 6",
      price: "3500",
      description:
          "The Description of shoe.Its quality, size, color, and many more.",
      imagePath: "assets/images/three.png",
    ),
  ];

  // list of items in user cart
  List<ShoeModel> userCart = [];

  // get list of shoes for sale
  List<ShoeModel> getShoeList() {
    return shoeShop;
  }

  // get user cart
  List<ShoeModel> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(ShoeModel shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item to cart
  void removeItemToCart(ShoeModel shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

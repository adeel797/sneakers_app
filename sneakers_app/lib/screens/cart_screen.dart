import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart_model.dart';
import 'package:sneakers_app/models/shoe_model.dart';

import '../components/cart_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Consumer<CartModel>(builder: (context,value,child)=>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context,index){
          // get individual shoe
          ShoeModel individualShoe = value.getUserCart()[index];
          return CartTile(shoeModel: individualShoe,);
        }),
      )),
    );
  }
}

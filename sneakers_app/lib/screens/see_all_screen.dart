import 'package:flutter/material.dart';
import 'package:sneakers_app/components/add_cart_function.dart';
import 'package:sneakers_app/components/shoe_tile.dart';
import 'package:sneakers_app/models/cart_model.dart';
import 'package:sneakers_app/models/shoe_model.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: CartModel().getShoeList().length,
        itemBuilder: (context, index) {
          ShoeModel shoeModel = CartModel().getShoeList()[index];
          return ShoeTile(
            shoeModel: shoeModel,
            onTap: () => AddCartFunction().addItemToCart(shoeModel, context),
          );
        },
      ),
    );
  }
}

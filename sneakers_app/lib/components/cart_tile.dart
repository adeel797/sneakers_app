import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart_model.dart';
import 'package:sneakers_app/models/shoe_model.dart';

class CartTile extends StatelessWidget {
  ShoeModel shoeModel;
  CartTile({super.key, required this.shoeModel});

  void removeItemFromCart(BuildContext context){
    Provider.of<CartModel>(context,listen: false).removeItemToCart(shoeModel);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Image.asset(shoeModel.imagePath),
        title: Text(
          shoeModel.name,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          shoeModel.price,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        trailing: IconButton(
          onPressed:()=> removeItemFromCart(context),
          icon: Icon(Icons.delete, color: Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/components/add_cart_function.dart';
import 'package:sneakers_app/models/cart_model.dart';
import 'package:sneakers_app/models/shoe_model.dart';
import 'package:sneakers_app/screens/see_all_screen.dart';

import '../components/shoe_tile.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Consumer<CartModel>(
        builder: (context, value, child) => Column(
          children: [
            // message
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Step into Style: Your Ultimate Sneaker Adventure Awaits!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),

            //hot pics
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Shoes",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SeeAllScreen()),
                    ),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  ShoeModel shoe = value.getShoeList()[index];
                  return ShoeTile(shoeModel: shoe, onTap:()=> AddCartFunction().addItemToCart(shoe,context));
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 100.0,
                left: 25.0,
                right: 25.0,
              ),
              child: Divider(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}

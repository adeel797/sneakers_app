import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe_model.dart';

class ShoeTile extends StatelessWidget {
  final ShoeModel shoeModel;
  void Function()? onTap;

  ShoeTile({super.key, required this.shoeModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Reduced margin
      width: 280, // Kept width for horizontal scroll consistency
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Ensure column takes only needed space
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shoeModel.imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          // Shoe name + price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    shoeModel.name,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis, // Prevent text overflow
                  ),
                ),
                Text(
                  "Rs.${shoeModel.price}",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              shoeModel.description,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
              maxLines: 2, // Limit description to prevent excessive height
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Add to cart button
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Adjusted padding
              margin: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_outlined, color: Theme.of(context).colorScheme.inversePrimary,),
                  SizedBox(width: 8),
                  Text(
                    "Add to cart",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

import '../models/cart_model.dart';
import '../models/shoe_model.dart';

class AddCartFunction {
  void addItemToCart(ShoeModel shoe, BuildContext context) {
    Provider.of<CartModel>(context, listen: false).addItemToCart(shoe);
    showModernDialog(
      context,
      "Item added successfully!",
      "Go to cart for more options",
      "Close",
      () {},
      PanaraDialogType.success,
    );
  }

  void showModernDialog(
    BuildContext context,
    String title,
    String message,
    String buttonText,
    Function() onTapDismiss,
    PanaraDialogType type,
  ) {
    PanaraInfoDialog.show(
      color: Colors.grey[500],
      context,
      title: title,
      message: message,
      buttonText: buttonText,
      onTapDismiss: () {
        Navigator.pop(context);
      },
      panaraDialogType: type,
    );
  }
}

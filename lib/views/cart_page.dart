import 'package:flutter/material.dart';
import 'package:grabandeat/component/button.dart';
import 'package:grabandeat/model/shop.dart';
import 'package:grabandeat/models/Item.dart';
import 'package:grabandeat/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Item food, BuildContext context) {
    //getting access to shop
    final shop = context.read<Shop>();
    //actually removing the cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text('My Cart'),
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: headingColor,
        ),
        body: Column(
          children: [
            //customer cart section
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  //get food from cart
                  final Item food = value.cart[index];
                  //get food name
                  final String foodName = food.name;
                  //get food price
                  final String foodPrice = food.price;
                  //return list tile
                  return Container(
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: subtitleColor,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: bgColor,
                        ),
                        onPressed: () => removeFromCart(food, context),
                      ),
                    ),
                  );
                },
              ),
            ),

            //pay button
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                  text: "Pay Now",
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) => AlertDialog(
                        backgroundColor: primaryColor,
                        content: Text(
                          "Order Placed.",
                          style: TextStyle(color: textColor),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyButton(
                                text: 'Close',
                                onTap: () {
                                  // Create a copy of the cart
                                  final cartCopy = List<Item>.from(
                                      context.read<Shop>().cart);

                                  // Loop through the copy and remove each item
                                  for (final item in cartCopy) {
                                    context.read<Shop>().removeFromCart(item);
                                  }

                                  // Perform two navigations
                                  Navigator.pop(
                                      context); // Close the confirmation dialog
                                  Navigator.pop(
                                      context); // Go back to the previous page
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

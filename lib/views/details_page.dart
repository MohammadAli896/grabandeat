import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabandeat/component/button.dart';
import 'package:grabandeat/model/shop.dart';
import 'package:grabandeat/models/Item.dart';
import 'package:grabandeat/theme/colors.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  final Item food;
  const DetailsPage({super.key, required this.food});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  //quantity
  int quantityCount = 0;

  void decrementQuantity() {
    if (quantityCount >= 1) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void incrementQuantity() {
    if (quantityCount <= 14) {
      setState(() {
        quantityCount++;
      });
    }
  }

  //add to cart
  void addToCart() {
    //only add to cart if there is something in the cart
    if (quantityCount > 0) {
      //get access to shop
      final shop = context.read<Shop>();

      //add the actual item to the cart
      shop.addToCart(widget.food, quantityCount);

      //give a message of confirmation
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: Text(
            "Sucessfully added to cart",
            style: TextStyle(color: textColor),
            textAlign: TextAlign.center,
          ),
          actions: [
            //confirm button
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.done,
                color: textColor,
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.food.name),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 25,
                  ),

                  //image
                  Image.network(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  Text(
                    widget.food.shortDescription,
                    style: GoogleFonts.lato(fontSize: 20, height: 2),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
                  Text(
                    '\$${widget.food.price}',
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Row(
                    children: [
                      //minus button
                      Container(
                        decoration: BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: textColor,
                          ),
                          onPressed: decrementQuantity,
                        ),
                      ),
                      //quantity counter

                      SizedBox(
                        width: 40,
                        child: Center(
                          child: Text(
                            quantityCount.toString(),
                            style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),

                      //plus button
                      Container(
                        decoration: BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: textColor,
                          ),
                          onPressed: incrementQuantity,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              //add to cart button
              MyButton(text: "Add to Cart", onTap: addToCart),
            ]),
          ),
        ],
      ),
    );
  }
}

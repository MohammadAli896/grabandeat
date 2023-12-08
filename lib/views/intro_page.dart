import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabandeat/component/button.dart';
import 'package:grabandeat/model/shop.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final selectedRestaurant = args?['selectedRestaurant'];
    final shortDescription = args?['shortDescription'];
    final mainImage = args?['mainImage'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25,
              ),

              //add an image/icon
              Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  color: Colors.transparent,
                  child: Image.network(
                    mainImage ?? '', // Handle null case
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //add name of the store
              Text(
                selectedRestaurant ?? '', // Handle null case
                style: GoogleFonts.lato(fontSize: 30, color: Colors.black),
              ),

              const SizedBox(
                height: 10,
              ),

              //add a subtitle or description of restaurant
              Text(
                shortDescription ?? '', // Handle null case
                style: TextStyle(color: Colors.grey[800], height: 2),
              ),

              const SizedBox(
                height: 25,
              ),

              //the get started button
              MyButton(
                text: 'Order Now',
                onTap: () async {
                  final shop = context.read<Shop>();
                  await shop.fetchItems(selectedRestaurant);
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, '/mainpage', arguments: {
                    'selectedRestaurant': selectedRestaurant,
                    'mainImage': mainImage,
                    'menu': shop.menu,
                  });
                },
              ),
            ]),
      ),
    );
  }
}

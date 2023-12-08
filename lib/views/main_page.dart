import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabandeat/component/button.dart';
import 'package:grabandeat/component/itemtile.dart';
import 'package:grabandeat/component/recommendedtile.dart';
import 'package:grabandeat/model/shop.dart';
import 'package:grabandeat/theme/colors.dart';
import 'package:grabandeat/views/details_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void goToMainApp() {
    //give a message of confirmation
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        backgroundColor: primaryColor,
        content: Text(
          "Confirm to go back to restaurant selection",
          style: TextStyle(color: textColor),
          textAlign: TextAlign.center,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                text: 'Confirm',
                onTap: () =>
                    Navigator.pushNamed(context, '/restaurantselection'),
              )
            ],
          )
        ],
      ),
    );
  }

  //Navigate to item's page
  void navigateToDetail(int index) {
    //Get shop and it's menu
    final shop = context.read<Shop>();
    final menu = shop.menu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(
          food: menu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get the menu
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final menu = args?['menu'];
    final mainImage = args?['mainImage'];
    final selectedRestaurant = args?['selectedRestaurant'];
    //rest of the app
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        foregroundColor: headingColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: goToMainApp,
          child: const Icon(
            Icons.exit_to_app,
          ),
        ),
        title: Text(selectedRestaurant ?? ''),
        actions: [
          // cart button
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          //A promotional/messsage banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.lato(fontSize: 20, color: textColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: 'Redeem',
                      onTap: () {},
                    ),
                  ],
                ),

                //Insert an image/icon for promotional/message banner

                Image.network(
                  mainImage ?? '', height: 100, // Handle null case
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Recommended',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: headingColor),
            ),
          ),

          //recommended food items
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menu.length,
              itemBuilder: (context, index) {
                final food = menu[index];
                if (food.isRecommended == true) {
                  return RecommendedTile(
                    item: food,
                    onTap: () => navigateToDetail(index),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),

          //menu of items
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Our Menu',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: headingColor),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //List View to display the menu
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menu.length,
              itemBuilder: (context, index) {
                final food = menu[index];
                return ItemTile(
                  item: food,
                  onTap: () => navigateToDetail(index),
                );
              },
            ),
          ),

          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

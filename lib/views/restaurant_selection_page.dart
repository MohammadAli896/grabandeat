import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:grabandeat/controller/restaurant_data.dart';
import 'package:grabandeat/model/current_restaurant.dart';
import 'package:grabandeat/model/shop.dart';
import 'package:grabandeat/models/Restaurant.dart';
import 'package:grabandeat/theme/colors.dart';

class RestaurantSelectionPage extends StatefulWidget {
  const RestaurantSelectionPage({super.key});

  @override
  State<RestaurantSelectionPage> createState() =>
      _RestaurantSelectionPageState();
}

class _RestaurantSelectionPageState extends State<RestaurantSelectionPage> {
  final RestaurantSelectionState restaurantSelectionState =
      RestaurantSelectionState();

  final TextEditingController _searchController = TextEditingController();

  void goToMainApp() {
    //give a message of confirmation
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        backgroundColor: primaryColor,
        content: Text(
          "Confirm sign out.",
          style: TextStyle(color: textColor),
          textAlign: TextAlign.center,
        ),
        actions: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SignOutButton()],
          )
        ],
      ),
    );
  }

  String? selectedRestaurant;
  String? shortDescription;
  String? mainImage;
  Shop shop = Shop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Restaurant'),
        leading: GestureDetector(
          onTap: goToMainApp,
          child: const Icon(
            Icons.exit_to_app,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search restaurants...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (query) {
                setState(() {});
              },
            ),
          ),
          FutureBuilder<List<Restaurant?>>(
            future: queryListItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final filteredRestaurants = snapshot.data
                        ?.where((restaurant) =>
                            restaurant!.name.contains(_searchController.text))
                        .toList() ??
                    [];
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredRestaurants.length,
                  itemBuilder: (context, index) {
                    final restaurant = filteredRestaurants[index];
                    return ListTile(
                      title: Text(restaurant?.name ?? ''),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        setState(() {
                          selectedRestaurant = restaurant?.name;
                          shortDescription = restaurant?.shortDescription;
                          mainImage = restaurant?.mainImage;
                        });
                        safePrint('Selected restaurant: $selectedRestaurant');
                        // colorModel
                        //     .updateColors(restaurant?.preferences ?? Preference());
                        shop.fetchItems(selectedRestaurant!);
                        restaurantSelectionState
                            .setSelectedRestaurant(selectedRestaurant);
                        Navigator.pushNamed(context, '/intropage', arguments: {
                          'selectedRestaurant': selectedRestaurant,
                          'shortDescription': shortDescription,
                          'mainImage': mainImage,
                        });
                      },
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

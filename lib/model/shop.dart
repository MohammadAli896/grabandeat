import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:grabandeat/models/Item.dart';
import 'package:grabandeat/models/Restaurant.dart';

class Shop extends ChangeNotifier {
  final List<Item> menu = [];

  //fetch the Items
  void updateMenu(List<Item> restaurantMenu) {
    menu.clear();
    menu.addAll(restaurantMenu);
    notifyListeners();
  }

  Future<void> fetchItems(String restaurantName) async {
    final restaurant = await Amplify.DataStore.query(
      Restaurant.classType,
      where: Restaurant.NAME.eq(restaurantName),
    );
    if (restaurant.isNotEmpty) {
      final menu = restaurant.first.menu;
      updateMenu(menu); // Update the menu in your Shop object
      safePrint('Fetched menu for restaurant $restaurantName: $menu');
      notifyListeners();
    } else {
      safePrint('No restaurant found with name: $restaurantName');
    }
  }

  //customer cart
  final List<Item> _cart = [];
  //getter methods
  List<Item> get cart => _cart;

  //add to cart
  void addToCart(Item food, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(food);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Item food) {
    _cart.remove(food);
    notifyListeners();
  }

  void emptyCart() {
    cart.clear();
  }
}

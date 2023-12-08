import 'package:flutter/foundation.dart';

class RestaurantSelectionState extends ChangeNotifier {
  String? _selectedRestaurant;

  String? get selectedRestaurant => _selectedRestaurant;

  void setSelectedRestaurant(String? restaurant) {
    _selectedRestaurant = restaurant;
    notifyListeners();
  }
}

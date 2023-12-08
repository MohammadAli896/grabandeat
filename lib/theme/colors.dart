import 'package:flutter/material.dart';

// Initial values, you can set these based on your default preferences
Color primaryColor = Colors.white;
Color secondaryColor = Colors.red[300]!;
Color bgColor = Colors.orange[400]!;
Color headingColor = Colors.grey[800]!;
Color textColor = Colors.black;
Color subtitleColor = Colors.grey[200]!;

// class ColorModel extends ChangeNotifier {
//   void updateColors(Preference preferences) {
//     primaryColor = Color(int.parse(preferences.primaryColor ?? '0xFF388E3C'));
//     secondaryColor =
//         Color(int.parse(preferences.secondaryColor ?? '0xFF81C784'));
//     bgColor = Color(int.parse(preferences.bgColor ?? '0xFFE8F5E9'));
//     headingColor = Color(int.parse(preferences.headingColor ?? '0xFF2E7D32'));
//     textColor = Colors.white; // You can customize this based on your preference
//     subtitleColor = Color(int.parse(preferences.subtitleColor ?? '0xFFC8E6C9'));
//     notifyListeners();
//   }
// }

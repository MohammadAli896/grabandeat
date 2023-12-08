import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:grabandeat/models/Restaurant.dart';

Future<List<Restaurant?>> queryListItems() async {
  try {
    final request = ModelQueries.list(Restaurant.classType);
    final response = await Amplify.API.query(request: request).response;

    if (response.data == null || response.data?.items == null) {
      safePrint('errors: ${response.errors}');
      return [];
    }

    final restaurantList = response.data!.items;
    return restaurantList;
  } on ApiException catch (e) {
    safePrint('Query failed: $e');
    return [];
  }
}

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:grabandeat/model/shop.dart';
import 'package:grabandeat/models/ModelProvider.dart';
import 'package:grabandeat/views/cart_page.dart';
import 'package:grabandeat/views/intro_page.dart';
import 'package:grabandeat/views/restaurant_selection_page.dart';
import 'package:grabandeat/views/main_page.dart';
import 'package:provider/provider.dart';

import 'amplifyconfiguration.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    await Amplify.addPlugin(
        AmplifyDataStore(modelProvider: ModelProvider.instance));

    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(api);

    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: ChangeNotifierProvider(
        create: (context) => Shop(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // set the default theme
          theme: ThemeData.from(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blueGrey,
              backgroundColor: Colors.white,
            ),
          ).copyWith(
            indicatorColor: Colors.red,
          ),
          // set the dark theme (optional)
          darkTheme: ThemeData.from(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.red,
              backgroundColor: Colors.black,
              brightness: Brightness.dark,
            ),
          ),
          // set the theme mode to respond to the user's system preferences (optional)
          themeMode: ThemeMode.system,
          builder: Authenticator.builder(),
          home: const RestaurantSelectionPage(),
          routes: {
            '/intropage': (context) => const IntroPage(),
            '/mainpage': (context) => const MainPage(),
            '/cartpage': (context) => const CartPage(),
            '/myapp': (context) => const MyApp(),
            '/restaurantselection': (context) =>
                const RestaurantSelectionPage(),
          },
        ),
      ),
    );
  }
}

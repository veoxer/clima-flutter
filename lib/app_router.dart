import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case kLocationScreenRoute:
        return MaterialPageRoute(
          builder: (_) => LocationScreen(
            weatherArgs: args,
          ),
        );
      case kLoadScreenRoute:
      case kHomeScreenRoute:
        return MaterialPageRoute(builder: (_) => LoadingScreen());
      case kCityScreenRoute:
        return MaterialPageRoute(builder: (_) => CityScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No such route')),
          ),
        );
    }
  }
}

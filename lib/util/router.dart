import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:instagram_clone/features/menu/base_menu_page.dart';
import 'package:instagram_clone/features/menu/home/home_page.dart';

Route navigateToHomePage() {
  return MaterialPageRoute(
    builder: (BuildContext context) {
      return const HomePage();
    },
  );
}

Route navigateToBaseMenuPage() {
  return MaterialPageRoute(
    builder: (BuildContext context) {
      return const BaseMenuPage();
    },
  );
}

class AppRouter {
  Route routes(RouteSettings settings) {
    log('route : ${settings.name}');
    switch (settings.name) {
      case "/":
        return navigateToBaseMenuPage();
      case HomePage.route:
        return navigateToHomePage();
      default:
        return navigateToBaseMenuPage();
    }
  }
}

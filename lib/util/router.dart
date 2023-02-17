import 'dart:developer';

import 'package:facebook_clone/features/test/test_page.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/features/menu/base_menu_page.dart';
import 'package:facebook_clone/features/menu/home/home_page.dart';

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
      case TestPage.route:
        return navigateToTestPage();
      default:
        return navigateToBaseMenuPage();
    }
  }

  Route navigateToTestPage() {
    return MaterialPageRoute(
      builder: (BuildContext context) {
        return const TestPage();
      },
    );
  }
}

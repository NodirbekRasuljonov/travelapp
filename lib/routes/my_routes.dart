import 'package:flutter/material.dart';
import 'package:travelapp/screens/home/view/home_view.dart';
import 'package:travelapp/screens/splashscreen/view/splash_view.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splashscreen':
        return MaterialPageRoute(
          builder: (context) => SplashView(),
        );
      case '/homeview':
        return MaterialPageRoute(
          builder: (context) => HomeView(),
        );
    }
  }
}

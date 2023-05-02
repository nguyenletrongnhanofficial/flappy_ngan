// ignore_for_file: prefer_const_constructors
import 'package:flappy_ngan/layouts/Pages/page_game.dart';
import 'package:flappy_ngan/layouts/Pages/page_settings.dart';
import 'package:flutter/material.dart';
import '../layouts/Pages/page_rate_us.dart';
import '../layouts/Pages/page_start_screen.dart';
import '../Resources/strings.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Str.home:
        return MaterialPageRoute(builder: (_) => StartScreen());
      case Str.gamePage:
        return MaterialPageRoute(builder: (_) => GamePage());
      case Str.rateUs:
        return MaterialPageRoute(builder: (_) => RateUs());
      case Str.settings:
        return MaterialPageRoute(builder: (_) => Settings());
      default:
        _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Lỗi gồi báo lại tui đi"),
            backgroundColor: Colors.redAccent,
          ),
          body: Center(
            child: Text("Lỗi"),
          ),
        );
      },
    );
  }
}

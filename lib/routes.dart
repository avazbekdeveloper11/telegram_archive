import 'package:flutter/material.dart';
import 'package:telegram/screens/archive_page/archive_page.dart';
import 'package:telegram/screens/home_page/home_page.dart';

class Routergenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/archivPage':
        return MaterialPageRoute(builder: (context) => const ArchivePage());
    }
  }
}

import 'package:flutter/material.dart';

class BottomNavigationBarItems {
  static List<BottomNavigationBarItem> getNavigationItems() {
    return const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_music), label: 'Library'),
    ];
  }
}

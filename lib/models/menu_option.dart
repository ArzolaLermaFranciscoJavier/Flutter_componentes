import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
//seteamos las variables dl menu
  final String route;
  final IconData icon;
  final String name;
  final Widget screens;

  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screens,
  });
}

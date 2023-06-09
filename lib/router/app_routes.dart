import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/listview1_screen.dart';
import 'package:fluttercomponentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        icon: Icons.remove,
        name: "ListView1",
        route: "listview",
        screens: ListViewscreens()),
    MenuOption(
        icon: Icons.remove,
        name: "ListView ripo 2",
        route: "listview2",
        screens: ListViews2creens()),
    MenuOption(
        icon: Icons.remove,
        name: "ListView  ",
        route: "TabBar y Tabview",
        screens: const TabScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "tipos de botones  ",
        route: "ButtonView",
        screens: const ButtonScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "tipos de textfield  ",
        route: "textfield",
        screens: const TextScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "Alert Screen",
        route: "alertdialog",
        screens: const AlertScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " card",
        route: "cardview",
        screens: const CardScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " grid view",
        route: "gridview",
        screens: const GridScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " icon view",
        route: "Icon",
        screens: const IconScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " linear progrees",
        route: "linear",
        screens: const LinearScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " slider view",
        route: "slider",
        screens: const SliderScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " checkbox",
        route: "checkboxview",
        screens: const CheckboxScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " radiobutton",
        route: "radioview",
        screens: const RadioButtonScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " textbutton",
        route: "buttonview",
        screens: const TextButtonScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " Switch",
        route: "switchscreen",
        screens: const SwitchScreen()),
    MenuOption(
        icon: Icons.remove,
        name: " circular progress",
        route: "circularscreen",
        screens: const CirProgresScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "SnackBar",
        route: "SnackBarScreen",
        screens: const SnackBarScreen()),
    MenuOption(
        icon: Icons.remove,
        name: "Drawer",
        route: "DrawerScreen",
        screens: const DrawerMenuScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //creamos
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext contex) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes
          .addAll({option.route: (BuildContext context) => option.screens});
    }

    return appRoutes;
  }
}

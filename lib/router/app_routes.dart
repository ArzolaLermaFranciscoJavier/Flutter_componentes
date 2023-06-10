import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/listview1_screen.dart';
import 'package:fluttercomponentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        icon: Icons.list_alt,
        name: "ListView tipo 1",
        route: "listview",
        screens: ListViewscreens()),
    MenuOption(
        icon: Icons.fact_check,
        name: "ListView tipo 2",
        route: "listview2",
        screens: ListViews2creens()),
    MenuOption(
        icon: Icons.dns,
        name: "TabBar y Tabview  ",
        route: "TabBar y Tabview",
        screens: const TabScreen()),
    MenuOption(
        icon: Icons.smart_button,
        name: "tipos de botones  ",
        route: "ButtonView",
        screens: const ButtonScreen()),
    MenuOption(
        icon: Icons.text_fields,
        name: "tipos de textfield  ",
        route: "textfield",
        screens: const TextScreen()),
    MenuOption(
        icon: Icons.warning,
        name: "AlertDialog",
        route: "alertdialog",
        screens: const AlertScreen()),
    MenuOption(
        icon: Icons.card_giftcard,
        name: " card",
        route: "cardview",
        screens: const CardScreen()),
    MenuOption(
        icon: Icons.grid_3x3,
        name: " grid view",
        route: "gridview",
        screens: const GridScreen()),
    MenuOption(
        icon: Icons.add_reaction,
        name: " Iconos gridview",
        route: "Icon",
        screens: const IconScreen()),
    MenuOption(
        icon: Icons.linear_scale,
        name: " linear progrees",
        route: "linear",
        screens: const LinearScreen()),
    MenuOption(
        icon: Icons.tune,
        name: " slider view",
        route: "slider",
        screens: const SliderScreen()),
    MenuOption(
        icon: Icons.check_box_outline_blank,
        name: " checkbox",
        route: "checkboxview",
        screens: const CheckboxScreen()),
    MenuOption(
        icon: Icons.radio_button_checked,
        name: " radiobutton",
        route: "radioview",
        screens: const RadioButtonScreen()),
    MenuOption(
        icon: Icons.check_box_outline_blank,
        name: " textbutton",
        route: "buttonview",
        screens: const TextButtonScreen()),
    MenuOption(
        icon: Icons.toggle_on,
        name: " Switch",
        route: "switchscreen",
        screens: const SwitchScreen()),
    MenuOption(
        icon: Icons.blur_circular,
        name: " circular progress",
        route: "circularscreen",
        screens: const CirProgresScreen()),
    MenuOption(
        icon: Icons.sms_failed,
        name: "SnackBar",
        route: "SnackBarScreen",
        screens: const SnackBarScreen()),
    MenuOption(
        icon: Icons.pivot_table_chart,
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

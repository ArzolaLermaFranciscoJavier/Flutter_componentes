import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  _TabScreen createState() => _TabScreen();
}

class _TabScreen extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.fact_check),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter TabBar'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Aqui se muestra el ejemplo"),
                  Text("de TabBar y TabView"),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/tabView.jpeg"),
                  Text(" codigo tabview   "),
                ],
                //https://codeimg.io/
              ),
            ),
          ],
        ),
      ),
    );
  }
}

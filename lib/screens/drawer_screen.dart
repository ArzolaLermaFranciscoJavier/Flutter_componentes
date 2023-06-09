import 'package:flutter/material.dart';

class DrawerMenuScreen extends StatefulWidget {
  const DrawerMenuScreen({super.key});
  _DrawerMenuScreen createState() => _DrawerMenuScreen();
}

class _DrawerMenuScreen extends State<DrawerMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "ejemplo",
                icon: Icon(Icons.fact_check),
              ),
              Tab(text: "codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Drawer'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                title: Text('Menú'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text('Opción 1'),
                onTap: () {
                  // Acciones al seleccionar la opción 1
                },
              ),
              ListTile(
                title: Text('Opción 2'),
                onTap: () {
                  // Acciones al seleccionar la opción 2
                },
              ),
              ListTile(
                title: Text('Opción 3'),
                onTap: () {
                  // Acciones al seleccionar la opción 3
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Drawer.jpeg'),
                  Text("Codigo Drawer"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

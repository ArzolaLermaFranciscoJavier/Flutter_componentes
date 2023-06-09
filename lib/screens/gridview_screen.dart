import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<GridScreen> {
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
          title: Text('Flutter Gridview'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              //controlador del grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //manejo nmero de columnas
                  crossAxisCount: 1,
                  //espaciado de las columna
                  crossAxisSpacing: 5,
                  //espaciado entre las filas
                  mainAxisSpacing: 5,
                  //alto de las columnas
                  mainAxisExtent: 150),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/grid.jpeg"),
                  Text(" codigo Gridview  "),
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

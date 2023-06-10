import 'package:flutter/material.dart';

class ListViews2creens extends StatelessWidget {
  var car = ["mustang", "ford", "chevrolet", " buggati"];
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
          title: Text('Flutter ListView tipo 2'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: [
//spread
                ...car
                    .map((car) => ListTile(
                          title: Text(car),
                          trailing:
                              Icon(Icons.arrow_forward_ios, color: Colors.pink),
                          onTap: () {
                            var seleccion = car;
                            print(seleccion);
                          },
                        ))
                    .toList(),
                const Divider(
                  height: 20,
                  thickness: 4,
                  indent: 20,
                  endIndent: 20,
                )
              ],
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/List.jpeg"),
                  Text(" codigo List view   "),
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

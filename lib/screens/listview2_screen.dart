import 'package:flutter/material.dart';

class ListViews2creens extends StatelessWidget {
  var car = ["mustang", "ford", "chevrolet", " buggati"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView tipo 2'),
        ),
        body: ListView(
          children: [
//spread
            ...car
                .map((games) => ListTile(
                      title: Text(games),
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
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}

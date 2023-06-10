import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});
  _ButtonScreen createState() => _ButtonScreen();
}

class _ButtonScreen extends State<ButtonScreen> {
  int _value = 1;
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
          title: Text('Flutter Botones'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: TextButton(
                    child: Text("boton de texto"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: OutlinedButton(
                    child: Text("outline boton"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: ElevatedButton(
                    child: Text(" boton elevado"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: FloatingActionButton(
                    child: Text("boton float"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("First Item"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Second Item"),
                          value: 2,
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = _value;
                        });
                      },
                      hint: Text("Select item")),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: AppTheme.primary,
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("First"),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text("Second"),
                              value: 2,
                            )
                          ]),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/boton.jpeg"),
                  Text(" codigo Botones   "),
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

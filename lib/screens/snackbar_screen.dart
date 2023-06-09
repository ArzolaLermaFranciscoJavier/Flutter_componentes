import 'package:flutter/material.dart';

//import 'widgets/add_entry_dialog.dart';
class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});
  _CirProgresScreenState createState() => _CirProgresScreenState();
}

class _CirProgresScreenState extends State<SnackBarScreen> {
  var _selected = "";
  var _test = "Full Screen";

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
          title: Text('Flutter Snack Bar'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Hi! i am snackbar'),
                              ));
                            },
                            child: Text("Show Snackbar"),
                          ),
                          Text(_selected)
                        ],
                      ),
                    ),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/snack.jpeg'),
                  Text("Codigo de Snack Bar"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CirProgresScreen extends StatefulWidget {
  const CirProgresScreen({super.key});
  _CirProgresScreenState createState() => _CirProgresScreenState();
}

class _CirProgresScreenState extends State<CirProgresScreen> {
  double value = 0;

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
          title: Text('Flutter Circular Progress'),
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
                      child: CircularProgressIndicator(
                        value: 0.8,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 20),
                      child: CircularProgressIndicator(
                        value: 0.8,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.purple),
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 20),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 20),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        color: Colors.purple,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 10),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        color: Colors.purple,
                        strokeWidth: 10,
                      )),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 10),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.green,
                      strokeWidth: 5,
                      value: value,
                    ),
                  ),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/circular.jpeg'),
                  Text("Codigo de Circular Progress"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

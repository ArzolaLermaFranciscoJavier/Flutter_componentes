import 'package:flutter/material.dart';

class LinearScreen extends StatefulWidget {
  const LinearScreen({super.key});
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<LinearScreen> {
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
          title: Text('Flutter Linear Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.2,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xff52a1e0)),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                      backgroundColor: Colors.grey,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 0.6,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                      backgroundColor: Colors.grey,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                        value: 0.8,
                        backgroundColor: Colors.grey,
                        color: Colors.purple)),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                      value: 10,
                      backgroundColor: Colors.grey,
                      color: Colors.purple,
                      minHeight: 10,
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/BAR.jpeg"),
                  Text(" codigo Linear Progress  "),
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

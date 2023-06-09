import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _value = false;

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
          title: Text('Flutter Switch'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.deepOrange,
                      inactiveThumbColor: Colors.red,
                    ),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Switch(
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        activeColor: Colors.green,
                        activeTrackColor: Colors.deepOrange,
                        inactiveTrackColor: Colors.red[100],
                        inactiveThumbColor: Colors.red,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Switch(
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        activeColor: Colors.green,
                        activeTrackColor: Colors.deepOrange,
                        inactiveTrackColor: Colors.red[100],
                        inactiveThumbColor: Colors.red,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Switch(
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        activeColor: Colors.green,
                        activeTrackColor: Colors.deepOrange,
                        inactiveTrackColor: Colors.red[100],
                        inactiveThumbColor: Colors.red,
                      )),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/switch.jpeg'),
                  Text("Codigo de Switch"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

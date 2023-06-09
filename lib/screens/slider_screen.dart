import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<SliderScreen> {
  bool _value = false;
  double val = 1;
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
          title: Text('Flutter Slider'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  height: 100,
                  child: Slider(
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    min: 0,
                    max: 10,
                    activeColor: Colors.green,
                    inactiveColor: Colors.green[100],
                    label: val.round().toString(),
                    divisions: 10,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Slider.jpeg"),
                  Text(" codigo Slider   "),
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

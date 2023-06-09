import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplos y variaciones",
                icon: Icon(Icons.fact_check),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Card'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: <Widget>[
                ///////////////////////////////////////////////////
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "card con bakgorund",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: AppTheme.primary,
                  ),
                ),
                ///////////////////////////////////////////////////////////////////////////////////
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Elevation"),
                      ),
                      elevation: 8,
                      color: AppTheme.primary,
                    )),
                ////////////////////////////////////////////////////////////////////////////////////
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("shape"),
                      ),
                      elevation: 8,
                      shadowColor: AppTheme.primary,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )),
                ////////////////////////////////////////////////////////////////////////////////////
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("ShadowColor"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.green,
                    )),
                ////////////////////////////////////////////////////////////////////////////////////
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        //leading: Icon(Icons.music_note),
                        title: Text("Margin"),
                      ),
                      elevation: 8,
                      shadowColor: AppTheme.primary,
                      margin: EdgeInsets.all(20),
                    )),
                ////////////////////////////////////////////////////////////////////////////////////
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: ListTile(
                      title: Text("height and width"),
                    ),
                    elevation: 8,
                    shadowColor: AppTheme.primary,
                    margin: EdgeInsets.all(20),
                  ),
                ),

                ////////////////////////////////////////////////////////////////////////////////////
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("rounded corners"),
                      ),
                      elevation: 8,
                      shadowColor: AppTheme.primary,
                      margin: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("border and border color"),
                      ),
                      elevation: 8,
                      shadowColor: AppTheme.primary,
                      margin: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: AppTheme.primary, width: 1)),
                    )),
                ///////////////////////////////////////////////
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: Container(
                        height: 160,
                        width: 160,
                        child: Center(
                          child: ListTile(
                            title: Text("circular card"),
                          ),
                        ),
                      ),
                      elevation: 8,
                      shadowColor: AppTheme.primary,
                      margin: EdgeInsets.all(20),
                      shape: CircleBorder(
                        side: BorderSide(width: 1, color: Colors.white),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Expanded(
                                child: Image.asset("assets/joji.jpg"),
                                flex: 2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.black,
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: ListTile(
                                      title: Text("joji"),
                                      subtitle: Text("Ed Sheeran"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          child: Text("PLAY"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                          child: Text("ADD TO QUEUE"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                    elevation: 8,
                    margin: EdgeInsets.all(10),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/card.jpeg"),
                  Text(" codigo Card "),
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

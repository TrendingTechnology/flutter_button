import 'package:example/screens/custom.dart';
import 'package:example/screens/social.dart';
import 'package:example/screens/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter buttons",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: [
              Tab(icon: Text("Social")),
              Tab(icon: Text("Custom")),
              Tab(icon: Text("Text")),
              Tab(icon: Text("FAB")),
            ],
          ),
          title: Text("flutter buttons' example app"),
        ),
        body: TabBarView(
          children: [
            Social(),
            Custom(),
            TextScreen(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
import 'package:example/screens/custom.dart';
import 'package:example/screens/fab.dart';
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
          bottom: buildTabBar(),
          title: Text("flutter buttons' example app"),
        ),
        body: buildBody(),
      ),
    );
  }

  TabBarView buildBody() {
    return TabBarView(
      children: [
        Social(),
        Custom(),
        TextScreen(),
        FabScreen(),
      ],
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      indicatorColor: Colors.white,
      tabs: [
        Tab(icon: Text("Social")),
        Tab(icon: Text("Custom")),
        Tab(icon: Text("Text")),
        Tab(icon: Text("FAB")),
      ],
    );
  }
}

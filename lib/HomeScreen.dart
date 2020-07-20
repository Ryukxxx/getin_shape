import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

import 'SecondScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetinShape',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GetinShape'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: GradientAppBar(
          title: Text(widget.title),
          gradient: LinearGradient(colors: [Colors.blueGrey[600], Colors.blueGrey[900]]),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.accessibility_new),
              text: 'Exercise',
            ),
            Tab(
              icon: Icon(Icons.assessment),
              text: 'Activity',
            ),
            Tab(
              icon: Icon(Icons.child_care),
              text: 'Profile',
            )
          ]),
        ),
        drawer: MultiLevelDrawer(
          backgroundColor: Colors.blueGrey[100],
          rippleColor: Colors.blueGrey[100],
          subMenuBackgroundColor: Colors.blueGrey[100],
          divisionColor: Colors.blueGrey[900],
          header: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                      "assets/dp.jpg",
                      width: 100,
                      height: 100,
                  ),
                SizedBox(
                  height: 10  ,
                ),
                  Text("Welcome")
                ],
              ),
            ),
          ),
          children: [
            MLMenuItem(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              content: Text('My Profile'),
            ),
            MLMenuItem(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_right),
              content: Text("Settings"),
              onClick: () {},
            ),
            MLMenuItem(
              leading: Icon(Icons.notifications_none),
              trailing: Icon(Icons.arrow_right),
              content: Text("Notification"),
              onClick: () {},
            ),
            MLMenuItem(
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.arrow_right),
              content: Text("Payments"),
              onClick: () {},
            ),
        ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WEEK',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
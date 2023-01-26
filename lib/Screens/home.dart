import 'dart:async';
import 'dart:ui';

import 'package:fapp/Screens/bottmnavbar.dart';
import 'package:fapp/Screens/categoryCard.dart';
import 'package:fapp/Screens/forgotten.dart';
import 'package:fapp/Screens/gridDashboard.dart';
import 'package:fapp/Screens/Bar.dart';
import 'package:fapp/Screens/login.dart';
import 'package:fapp/Screens/sidebare.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //this give us total height and with our device
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(238, 234, 229, 238),
                  Color.fromARGB(238, 234, 229, 238),
                ])),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/user.png"),
                )),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('mail'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('mail'),
              onTap: () => null,
              trailing: ClipOval(
                  child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                    child: Text(
                  '8',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )),
              )),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('mail'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('mail'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('mail'),
              onTap: () => null,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 152, 183),
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(238, 234, 229, 238),
      body: Container(
          padding: EdgeInsets.all(30),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Forgotten()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("asset/GPL.png"),
                      Text(
                        "data",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  )),
                ),
              ),
              Card(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Forgotten()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 70,
                      ),
                      Text(
                        "data",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  )),
                ),
              ),
              Card(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Forgotten()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 70,
                      ),
                      Text(
                        "data",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  )),
                ),
              ),
              Card(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Forgotten()));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 70,
                      ),
                      Text(
                        "data",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  )),
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomBar(),
    );
  }
}

import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Color.fromARGB(0, 211, 94, 94),
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.height / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: Color.fromARGB(255, 96, 132, 195),
                          ),
                          Icon(Icons.search, color: Color(0xFF676E79)),
                          Icon(Icons.person_outline, color: Color(0xFF676E79))
                        ],
                      )),
                ])));
  }
}

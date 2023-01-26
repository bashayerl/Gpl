import 'package:flutter/material.dart';

class GridDashboard extends StatelessWidget {
  Item item1 = new Item(title: "S", img: "assets/padlock.png");

  Item item2 = new Item(title: "Computer Scince", img: "assets/settings.png");

  Item item3 =
      new Item(title: "Business Administration", img: "assets/stats.png");

  Item item4 = new Item(title: "Mathematics", img: "assets/calculating.png");

  Item item5 = new Item(title: "title", img: "assets/GPL.png");

  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    List<Item> myList = [item1, item2, item3, item4];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 60,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      data.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
            );
          }).toList()),
    );
  }
}

class Item {
  String title;

  String img;
  Item({required this.title, required this.img});
}

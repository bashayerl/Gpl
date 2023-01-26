import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SideBarState();
}

class _SideBarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 219, 216, 205),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("name"),
            accountEmail: Text("fchvybvv@"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                'assers/user.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            )),
          ),
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
    );
  }
}

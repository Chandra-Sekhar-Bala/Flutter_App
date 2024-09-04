import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.blueAccent,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                currentAccountPicture: Icon(
                  Icons.ac_unit_outlined,
                  color: Colors.amberAccent,
                ),
                margin: EdgeInsets.all(0),
                accountName: Text("Chandra Sekhar"),
                accountEmail: Text("test@mail.com")),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
            title: Text(
              "Notification",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            title: Text(
              "Cart",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}

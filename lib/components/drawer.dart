import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountEmail: Text("Mohamamd.ali.romani@gmail.com"),
              accountName: Text('Mohammad Ali'),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/components/drawer.jpg"),
                    fit: BoxFit.cover),
              )),
          ListTile(
              title: Text("الصفحة الرئيسية",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18)),
              leading: Icon(Icons.home, color: Colors.blueAccent),
              // isThreeLine: true,
              dense: true,
              onTap: () {
                Navigator.of(context).pushNamed('home');
              }),
          ListTile(
              title: Text("الأقسام",
                  style: TextStyle(fontSize: 18, color: Colors.black54)),
              leading: Icon(Icons.category),
              // isThreeLine: true,
              dense: true,
              onTap: () {
                Navigator.of(context).pushNamed('categories');
              }),
          Divider(color: Colors.blue, thickness: 1),
          ListTile(
              title: Text("عن التطبيق",
                  style: TextStyle(fontSize: 18, color: Colors.black54)),
              leading: Icon(Icons.settings_applications),
              // isThreeLine: true,
              dense: true,
              onTap: () {
                Navigator.of(context).pushNamed('about');
              }),
          ListTile(
              title: Text("الإعدادات",
                  style: TextStyle(fontSize: 18, color: Colors.black54)),
              leading: Icon(Icons.settings),
              // isThreeLine: true,
              dense: true,
              onTap: () {
                print("Tap");
              }),
        ],
      ),
    );
  }
}

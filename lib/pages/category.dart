import 'package:flutter/material.dart';
import 'package:newpro/components/drawer.dart';
import 'package:newpro/components/mobilelist.dart';

class Category extends StatelessWidget {
  var mobile = [
    {
      'name': 'grand prime',
      'camira': '16.0',
      'm': '2.4',
      'RAM': '8',
      'Storage': '16 GB'
    },
    {
      'name': 'grand prime pro',
      'camira': '8.0',
      'm': '4.4',
      'RAM': '16',
      'Storage': '64 GB'
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Samsunge"),
              centerTitle: true,
              backgroundColor: Colors.blue,
              actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
              toolbarHeight: 60,
              toolbarOpacity: 0.7,
              // actionsIconTheme: itd,
              // centerTitle: true,
              elevation: 20,
              // leading: IconButton(icon: Icon(Icons.backspace), onPressed: (){}),
              // titleSpacing: 30,
              brightness: Brightness.dark,
              // automaticallyImplyLeading:true
            ),
            drawer: MyDrawer(),
            body: ListView.builder(
              itemCount: mobile.length,
              itemBuilder: (context, i) {
                return MobileList(
                  name: mobile[i]['name'],
                  m: mobile[i]['m'],
                  memory: mobile[i]['camira'],
                  ram: mobile[i]['RAM'],
                );
              },
            )));
  }
}

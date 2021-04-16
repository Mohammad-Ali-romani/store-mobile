import 'package:flutter/material.dart';
import 'package:newpro/components/drawer.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Mobile Me",
                  style: TextStyle(fontWeight: FontWeight.w600)),
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
            body: ListView(
              children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    child: GridTile(
                      child: Image.asset('images/products/a1.jpg'),
                      footer: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                child: Text(
                                  "Nexus 5X",
                                  style: myStyle(),
                                ),
                                padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
                              )),
                              Expanded(
                                child: Container(
                                  child: Text("100\$",
                                      textAlign: TextAlign.left,
                                      style: myStyle()),
                                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                                ),
                              )
                            ],
                          ),
                          color: Colors.black.withOpacity(0.4)),
                    )),
                Container(
                  child: Text('مواصفات',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'RAM : ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      TextSpan(text: '8', style: TextStyle(fontSize: 20))
                    ]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'الشاشة : ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '5 px',
                          style: TextStyle(fontSize: 20, color: Colors.black87))
                    ]),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'الكاميرة : ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      TextSpan(text: '8', style: TextStyle(fontSize: 20))
                    ]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'المعالج : ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '2 h z',
                          style: TextStyle(fontSize: 20, color: Colors.black87))
                    ]),
                  ),
                ),
              ],
            )));
  }

  TextStyle myStyle() {
    return TextStyle(color: Colors.white, fontSize: 23);
  }
}

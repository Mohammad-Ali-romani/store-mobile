import 'package:flutter/material.dart';

class MobileList extends StatelessWidget {
  final name, memory, m, ram;
  MobileList({this.name, this.memory, this.m, this.ram});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Container(
          height: 120,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Card(
            child: Row(
              children: [
                Expanded(flex: 1, child: Image.asset("images/products/s1.jpg")),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: ListTile(
                          title: Text(name),
                          subtitle: Column(
                            children: [
                              Row(
                                children: [
                                  Text("الكميرا : ${memory}"),
                                  Text(" المعالج : ${m} hz"),
                                  Text(" الرام : ${ram} ")
                                ],
                              )
                            ],
                          )),
                      alignment: Alignment.topRight,
                    ))
              ],
            ),
          )),
          onTap: (){
            Navigator.of(context).pushNamed('product');
          },
    );
  }
}

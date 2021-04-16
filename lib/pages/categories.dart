import 'package:flutter/material.dart';
import 'package:newpro/components/drawer.dart';

class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Apple"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: (){})
          ],
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
        drawer:MyDrawer(),
        body:GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Card(
                child:InkWell(
                  child: Image.asset("images/categories/Samsung.png"),
                  onTap: (){
                    Navigator.of(context).pushNamed("category");
                  },
                )
              ),
              
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Card(
                
                child:Image.asset("images/categories/Huawei.png")
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Card(
                
                child:Image.asset("images/categories/apple.png")
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Card(
                child:Image.asset("images/categories/sony.png")
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Card(
                
                child:Image.asset("images/categories/xiaomi.png")
              ),
            ),
            
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:newpro/components/drawer.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mobile Me",style: TextStyle(fontWeight: FontWeight.w600)),
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // this is the slider
            Container(
              height: 250,
              width: double.infinity,
              child: Carousel(
                // this is the images
                images: [
                  Image.asset('images/components/slider.jpg'),
                  Image.asset('images/components/slider2.jpg'),
                  Image.asset('images/components/slider3.jpg'),
                ],
                // this is the style
                boxFit : BoxFit.cover,
                dotColor: Colors.white,
                dotIncreasedColor: Colors.blue,
                dotBgColor: Colors.transparent,
                // this is the shadow
                overlayShadowColors: Colors.lightBlue,
                overlayShadow: true,
                overlayShadowSize: 0.5,
                // this is the property
                autoplay:true,
                animationCurve:Curves.linear,
              ),
            ),
            // this is the title category
            Container(
              padding: EdgeInsets.fromLTRB(0, 18, 15, 0),
              child: Text("الأقسام",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28
                )
              ),
            ),
            // this is the category items
            Container(
              height:125,
              width:double.infinity,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 125,
                    width:125,
                    alignment: Alignment.center,
                    child:ListTile(
                      title: Image.asset("images/categories/apple.png",fit: BoxFit.fill),
                    ) 
                  ),
                  Container(
                    height: 125,
                    width:125,
                    alignment: Alignment.center,
                    child:ListTile(
                      title: Image.asset("images/categories/Huawei.png",fit: BoxFit.fill),
                    ) 
                  ),
                  Container(
                    height: 125,
                    width:125,
                    alignment: Alignment.center,
                    child:ListTile(
                      title: Image.asset("images/categories/Samsung.png",fit: BoxFit.fill),
                    ) 
                  ),
                  Container(
                    height: 125,
                    width:125,
                    alignment: Alignment.center,
                    child:ListTile(
                      title: Image.asset("images/categories/sony.png",fit: BoxFit.fill),
                    ) 
                  ),
                  Container(
                    height: 125,
                    width:125,
                    alignment: Alignment.center,
                    child:ListTile(
                      title: Image.asset("images/categories/xiaomi.png",fit: BoxFit.fill),
                    ) 
                  ),
                ],
              )
            ),
            // this is the title products
            Container(
              padding: EdgeInsets.fromLTRB(0, 18, 15, 5),
              child: Text("المنتجات",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28
                )
              ),
            ),
            // this is the products
            Container(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  InkWell(
                    child:GridTile(
                      child: Image.asset("images/products/a1.jpg"),
                      footer: Container(
                        child: Text("Grand Prime",textAlign:TextAlign.center,style:TextStyle(fontSize: 22,color: Colors.white)),
                        color: Colors.blue,
                        height:35,
                        alignment: Alignment.center
                      )
                    ),
                    onTap: (){print('product');},
                  ),
                  InkWell(
                    child:GridTile(
                      child: Image.asset("images/products/a1.png"),
                      footer: Container(
                        child: Text("Grand Prime",textAlign:TextAlign.center,style:TextStyle(fontSize: 22,color: Colors.white)),
                        color: Colors.blue,
                        height:35,
                        alignment: Alignment.center
                      )
                    ),
                    onTap: (){print('product');},
                  ),
                  InkWell(
                    child:GridTile(
                      child: Image.asset("images/products/x1.jpg"),
                      footer: Container(
                        child: Text("Grand Prime",textAlign:TextAlign.center,style:TextStyle(fontSize: 22,color: Colors.white)),
                        color: Colors.blue,
                        height:35,
                        alignment: Alignment.center
                      )
                    ),
                    onTap: (){print('product');},
                  ),
                  InkWell(
                    child:GridTile(
                      child: Image.asset("images/products/s1.jpg"),
                      footer: Container(
                        child: Text("Grand Prime",textAlign:TextAlign.center,style:TextStyle(fontSize: 22,color: Colors.white)),
                        color: Colors.blue,
                        height:35,
                        alignment: Alignment.center
                      )
                    ),
                    onTap: (){print('product');},
                  ),
                  InkWell(
                    child:GridTile(
                      child: Image.asset("images/products/s3.jpg"),
                      footer: Container(
                        child: Text("Grand Prime",textAlign:TextAlign.center,style:TextStyle(fontSize: 22,color: Colors.white)),
                        color: Colors.blue,
                        height:35,
                        alignment: Alignment.center
                      )
                    ),
                    onTap: (){print('product');},
                  ),
                ],
              ),
            ),
          ],
        )
      ) 
    );
    
  }
}
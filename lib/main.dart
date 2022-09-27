import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_shoes_flutter_day_2/shoes.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title:
            Text("Shoes", style: TextStyle(color: Colors.black, fontSize: 35)),
        leading: null,
        actions: <Widget>[
          IconButton(
              onPressed: () => {log('One Notifications')},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () => {log('One Notifications')},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 2.2 / 1,
                          child: Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text("All",
                                      style: TextStyle(fontSize: 20)))),
                        ),
                        AspectRatio(
                          aspectRatio: 2.2 / 1,
                          child: Container(
                              child: Center(
                                  child: Text("Sneakers",
                                      style: TextStyle(fontSize: 17)))),
                        ),
                        AspectRatio(
                          aspectRatio: 2.2 / 1,
                          child: Container(
                              child: Center(
                                  child: Text("Basket",
                                      style: TextStyle(fontSize: 17)))),
                        ),
                        AspectRatio(
                          aspectRatio: 2.2 / 1,
                          child: Container(
                              child: Center(
                                  child: Text("Soccer",
                                      style: TextStyle(fontSize: 17)))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  makeItem(image: 'assets/images/one.jpg', tag: 'red', context: context),
                  makeItem(image: 'assets/images/two.jpg', tag: 'red', context: context),
                  makeItem(image: 'assets/images/three.jpg', tag: 'red', context: context)
                ],
              ))),
    );
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image:  image,))),
          child: Container(
            height: 250,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  image
                ),
                fit:BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 233, 225, 225),
                  blurRadius: 10,
                  offset: Offset(0, 10)
                )
              ]
            ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
             Row(
              children: <Widget>[
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sneakers", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                    Text("Nike", style: TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                    ))
                  ],
                )),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Center(
                    child: Icon(Icons.favorite_border, color: Colors.black,),
                  ),
                )
              ],
            ),
            Text('100\$', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)
            ],
           ),
          ),
        ));
  }
}

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shoes extends StatefulWidget {
  final String image;
  const Shoes({super.key, required this.image});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
      Hero(
        tag:'red', 
        child: Container(
           height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 233, 225, 225),
                      blurRadius: 10,
                      offset: Offset(0, 10))
                ]
            ),
          child: Stack(
          children: <Widget>[
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Container(child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,),),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              )),
              Container(
                height: 40,
                width: 40,
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
              ),
          
          // Text(
          //   '100\$',
          //   style: TextStyle(
          //       color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          // )
        ],
      ),
        ))),
     
      
    );
  }
}

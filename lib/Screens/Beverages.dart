import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class Beverage extends StatefulWidget {
  @override
  _BeverageState createState() => _BeverageState();
}

class _BeverageState extends State<Beverage> {

  List beverage = [
    {"item":"Cappuccino","price":"100","image":"https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1024-512,f_auto,q_auto:best/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p.jpg"},
    {"item":"Coffee","price":"50","image":"https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1024-512,f_auto,q_auto:best/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p.jpg"},
    {"item":"Tea","price":"150","image":"https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1024-512,f_auto,q_auto:best/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p.jpg"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        itemCount: beverage.length,
        itemBuilder: (context,index){
          return Container(
            height: 280,
            padding: EdgeInsets.all(3),
            child: Stack(
              children: [
                Positioned(
                  child:Container(
                    height: 180,
                    color: Colors.black,
                    child: Image.network(beverage[index]['image']),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 220,
                  right: 5,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                      print("added to cart");
                    },
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("ADD",style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
                Positioned(
                  top: 225,
                  left: 15,
                  child: Container(
                    height: 15,
                    width: 15,
                    // color: Colors.green,
                    child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Indian-vegetarian-mark.svg/1200px-Indian-vegetarian-mark.svg.png"),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 35,
                  child: InkWell(
                    splashColor: Colors.white,
                    child: Center(
                        child: Text(beverage[index]['item'],
                          style: TextStyle(
                              color: Colors.black,fontSize: 20),)),
                    onTap: (){},
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 35,
                  child: InkWell(
                    splashColor: Colors.white,
                    child: Center(child: Text('\u{20B9}${beverage[index]["price"]}',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    ),
                    onTap: (){},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

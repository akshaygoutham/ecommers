import 'package:flutter/material.dart';

import 'Beverages.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: (){},
    ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(" Order summery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
            ],
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.black,indent: 10,endIndent: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("  Coffee",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

            ],
          ),
          SizedBox(height: 30),
          Divider(color: Colors.black,indent: 10,endIndent: 10,),







          Spacer(),
          Container(
            width: 290,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(" Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 290,
            child: Text(" 3th Street. 47 W 13th St, New York, NY 10011, USA. 20 ",style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: 290,
            child: Center(child: Text("Proceed To Payment",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intertoons/Screens/Beverages.dart';
import 'package:intertoons/Screens/Home.dart';
import 'package:intertoons/Screens/account.dart';

import 'Screens/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentIndex = 1;
  TabController _controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TabController(length: 4, vsync: this,initialIndex: 2);
  }

  final screen = [
    Home(),
  Beverage(),
    Search(),
    Account()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      title: Text("Explore"
   ),
        bottom: TabBar(

          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              text:"ADS",
            ),
            Tab(
              text:"ICE Cream",
            ),
            Tab(
              text:"Bevrages",
            ),
            Tab(
              text:"Daily Special",
            ),
          ],
        ),
     ),
      // body: TabBarView(
      //      controller: _controller ,
      //   children: [
      //     Home(),
      //     Text("status"),
      //     Beverage(),
      //     Text("status"),
      //   ],
      // ),
       body: screen[_currentIndex] ,


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        onTap: (index)=> setState(()=> _currentIndex = index),
        currentIndex:_currentIndex,
        iconSize: 20.0,
        selectedFontSize: 9,
        unselectedFontSize: 9,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),

        ],
      ),
    );
  }
}

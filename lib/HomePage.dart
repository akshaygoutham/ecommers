import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TabController(length: 4, vsync: this,initialIndex: 1);
  }
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
      body: TabBarView(
           controller: _controller ,
        children: [
          Text("status"),
          Text("status"),
          Text("calls"),
          Text("status"),

        ],
      ),
    );
  }
}

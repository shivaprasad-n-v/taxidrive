import 'package:flutter/material.dart';

class draw extends StatefulWidget {
  @override
  _drawState createState() => _drawState();
}

class _drawState extends State<draw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent,
        
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/driv.png"),
            ),
          ),
          Center(child: Text("Driver: ohan j")),
          Center(child: Text("Km Drive: 1000")),
          Container(height: 1,color: Colors.grey,width: 350,),
          SizedBox(height: 58,),
          Card(child: ListTile(title: Text("Wallets"),)),
          
          Card(child: ListTile(title: Text("History"),)),
          
          Card(child: ListTile(title: Text("Logout"),)),
          
          Card(child: ListTile(title: Text("call to our support"),)),
        ],
      ),
    );
  }
}

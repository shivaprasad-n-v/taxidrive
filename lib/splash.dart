import 'package:flutter/material.dart';
import 'package:taxiudriverapp/dlogin.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState(){
    super.initState();
    Future.delayed(
        Duration(
            seconds:  3
        ),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
        }
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          child:CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/driv.png"),

          ),
        ),
      ),
    );
  }
}

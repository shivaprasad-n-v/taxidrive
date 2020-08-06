import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taxiudriverapp/dashboard.dart';
import 'package:taxiudriverapp/reg.dart';
import 'package:taxiudriverapp/shared/textfiled.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          SafeArea(
            child: Container(
              child: Column(


                children: [
                  SizedBox(height: 50,),
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/driv.png"),
                    ),
                  ),
SizedBox(height: 20,),
Container(
  height: 400,
  width: 350,
 decoration: BoxDecoration(
   color: Colors.white,
   borderRadius: BorderRadius.circular(25),
   boxShadow: <BoxShadow>[
     BoxShadow(
           blurRadius: 5,
           color: Colors.black38,
           offset: Offset(4, 4),

     ),
     BoxShadow(
           blurRadius: 5,
           color: Colors.black38,
           offset: Offset(-4, -4),

     )
   ]
 ),
  child: Column(
    children: [
    Center(child: Text("WellCome Back",style: TextStyle(fontSize: 20,color:Colors.red),)),
          SizedBox(height: 30,),
          Container(
            height: 80,
            width: 300,

           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(100),
            color: Colors.white
           ),
            child: TextField(
              decoration: textinputdecoration.copyWith(hintText: "Login with email"),
            ),
          ),
      SizedBox(height: 25,),
      Container(
        height: 80,
        width: 300,
        color: Colors.white,
        child: TextField(
          decoration: textinputdecoration.copyWith(hintText: "Password"),
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (Context)=>Dashboard()),);
        },
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xff44c662),
            borderRadius: BorderRadius.circular(80)
          ),
          child: Center(child: Text("Login")),

        ),
      ),
      SizedBox(height: 20,),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (Context)=>reg()),);

        },
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              color: Color(0xff44c662),
              borderRadius: BorderRadius.circular(80)
          ),
          child: Center(child: Text("Register")),
        ))
          ],
  ),

)


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

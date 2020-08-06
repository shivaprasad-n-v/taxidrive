import 'package:flutter/material.dart';
import 'package:taxiudriverapp/dashboard.dart';
import 'package:taxiudriverapp/dlogin.dart';
import 'package:taxiudriverapp/shared/textfiled.dart';

class reg extends StatefulWidget {
  @override
  _regState createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    height: 500,
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
                        Center(child: Text("Register",style: TextStyle(fontSize: 25,color:Colors.red),)),
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
                        SizedBox(height: 25,),
                        Container(
                          height: 80,
                          width: 300,
                          color: Colors.white,
                          child: TextField(
                            decoration: textinputdecoration.copyWith(hintText: "User Name"),
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
                            child: Center(child: Text("Register")),

                          ),
                        ),
                        SizedBox(height: 15,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (Context)=>LoginScreen()),);

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
                        )
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

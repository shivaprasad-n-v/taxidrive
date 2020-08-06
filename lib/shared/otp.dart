import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxiudriverapp/dashboard.dart';
import 'package:taxiudriverapp/shared/textfiled.dart';
class enterotp extends StatefulWidget {
  @override
  _enterotpState createState() => _enterotpState();
}

class _enterotpState extends State<enterotp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/bgs.jpg',),fit: BoxFit.fill),

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("New Order",style: GoogleFonts.poppins(fontSize: 30,color: Colors.white),),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.lightBlue,
                            offset: Offset(1, 1),

                          ),
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.lightGreen,
                            offset: Offset(-1, -1),

                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        Text("Verify Costumer",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey),),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/johan.jpg"),
                            ),
                            SizedBox(width: 5,),
                            Text("Jon tip",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),),

                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            SizedBox(width: 14,),
                            Icon(Icons.star,color: Colors.amber),
                            Text("4.9",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),),

                          ],
                        ),
                        Container(height: 1,color: Colors.grey,width: 250,),
                        SizedBox(height: 8,),
                        Text("from: West   To: East  ",style: GoogleFonts.poppins(fontSize: 21,color: Colors.blueAccent),),

                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.white,
                    child: TextField(
                      style: TextStyle(fontSize: 35),
                      decoration: textinputdecoration.copyWith(hintText: "OTP(Verify consumer)"),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (Context)=>Dashboard()
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xff44c662),
                          borderRadius: BorderRadius.circular(80)
                      ),
                      child: Center(child: Text("Start Your Ride",style: TextStyle(color: Colors.white),)),

                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

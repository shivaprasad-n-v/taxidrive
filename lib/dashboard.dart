import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxiudriverapp/getorder.dart';
import 'package:taxiudriverapp/shared/draw.dart';
import 'package:taxiudriverapp/shared/drawr.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/driv.png"),
              ),
              Text("Driver: ohan j"),
              Text("Km Drive: 1000"),

            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.home,size: 30,color: Colors.lightGreen,), onPressed:(){ }),
              IconButton(icon: Icon(Icons.live_help,size: 30,color: Colors.lightGreen,), onPressed: (){  Navigator.push(context, MaterialPageRoute(
                  builder: (Context)=>getorder(),)
              );}),
              IconButton(icon: Icon(Icons.payment,size: 30,color: Colors.lightGreen,), onPressed: null),

            ],
          ),
        ),

        body: ListView(
          children: [
            Container(
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bgs.jpg",),
                      fit: BoxFit.fill

                ),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.list,color: Colors.white,), onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> draw()),);
                      }),
                      Text("Dashboard",style: GoogleFonts.poppins(fontSize: 30,color: Colors.white),),
                      Switch(
                        value: isSwitched,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.red,
                        onChanged: (value){
                          setState(() {
                            isSwitched=value;
                            print(isSwitched);

                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,

                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 150,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
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
                        Text("Today",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey),),
                        SizedBox(height: 8,),
                        Text("\$250",style: GoogleFonts.poppins(fontSize: 28,color: Colors.black),),
                        SizedBox(height: 8,),
                        Container(height: 1,color: Colors.grey,width: 250,),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 3,),
                            Icon(Icons.directions_car,color: Colors.blueAccent,),
                            SizedBox(width: 6,),
                            Text("15 Rides",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black),),
                            SizedBox(width: 75,),
                            Icon(Icons.access_time,color: Colors.blueAccent,),
                            Text("12 Hours",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                  ),
SizedBox(height: 30,),

Container(
  height: 160,
  width: 320,
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
      Text("Wallet Balance",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey),),
      SizedBox(height: 8,),
      Text("\$1000",style: GoogleFonts.poppins(fontSize: 28,color: Colors.black),),
      SizedBox(height: 8,),
      Container(height: 1,color: Colors.grey,width: 250,),
      SizedBox(height: 10,),
      Column(
            children: [
              SizedBox(width: 6,),
              GestureDetector(
                child: Container(
                  child:Text("Withdraw  ->",style: GoogleFonts.poppins(color: Colors.blueAccent,fontSize: 18),),
                  ),
              ),
              Container(height: 1,color: Colors.grey,width: 250,),
              GestureDetector(
                child: Container(
                  child:Text("Payment History  ->",style: GoogleFonts.poppins(color: Colors.blueAccent,fontSize: 18),),
                ),
              ),
            ],
      )

    ],
  ),
),
SizedBox(height: 30,),
Container(
  height: 180,
  width: 320,
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
      Text("On Going",style: GoogleFonts.poppins(fontSize: 20,color: Colors.grey),),
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
      Text("Up coming trip(1)",style: GoogleFonts.poppins(fontSize: 18,color: Colors.blueAccent),),

    ],
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

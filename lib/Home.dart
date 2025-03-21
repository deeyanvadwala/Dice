import 'dart:math';

import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  var l=1;
  var r=2;
  String add ="Roll To Start Game!";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        elevation: 2.0,
        
        backgroundColor: Colors.red[900],
        title: Text("Dice",style: TextStyle(color: Colors.white,fontFamily: "Lob"),),
        shadowColor: Colors.black,
      ),
      backgroundColor: Colors.red,
      
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/catan.jpg"), // Your image in assets folder
              fit: BoxFit.cover, // Cover the full screen
            ),
          ),
          
        child: Column(
          children: [
            SizedBox(height: 50),
            Text('Roll Your Dice, Settler!',style: TextStyle(color: Colors.teal[300],fontSize: 40,fontWeight: FontWeight.w600,fontFamily: "Lob",shadows: [
      Shadow(
        blurRadius: 2,
        color: Colors.black,
        offset: Offset(3.0, 3.0),
      ),
    ], )),
            SizedBox(height: 50),
            Text(add,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontFamily: "Lob")),
            GestureDetector(
              onTap: (){
                
                var random1 = Random().nextInt(6)+1;
                var random2 = Random().nextInt(6)+1;
                var plus= random2+random1;
                
                setState(() {
                  l = random1;
                  r = random2;
                  add= "Take Resources from ${plus}";
                });
              },
              
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Row(
                  children: [
                    
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage("images/dice${l}.png")),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage("images/dice${r}.png")),
                    )),
                   
                   
                  ],
                ),
              ),
            ),
            
          ],
        ),
      )
    );
  }
}
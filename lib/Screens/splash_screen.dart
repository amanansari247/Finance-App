import 'dart:async';
import 'package:flutter/material.dart';
import 'package:managment/Screens/home.dart';
import 'package:managment/Screens/take_Name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashscreen extends StatefulWidget {
  splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                ),
                color: Color.fromARGB(255, 22, 42, 219),
                image: DecorationImage(
                  image: AssetImage('image/splashimage.png'),
                  fit: BoxFit.fill,
                )),
                
          ),
        Container(
        width: 350,
         child:Text.rich(
          
    TextSpan(
      
      style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold), 
      children: [
      TextSpan(text: "Let's\nManage\n"),
      TextSpan(text: 'Money', style: TextStyle(color: Color.fromARGB(255, 15, 37, 232))),
      TextSpan(text: ' With Us')
    ]
  )
) 
        ),
         Container(
         width: 170,
         height: 60,
         margin: EdgeInsets.only(bottom: 80),
           child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 127, 254), ),
           
            child: Text(
              'Get Started',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            onPressed: () => {  Navigator.push(context,
    MaterialPageRoute(builder: (context) =>  Take_name()),
  ) },

           )
         )         
        ],
      ),
    ));
  }
}




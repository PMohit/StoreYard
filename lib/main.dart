import 'dart:async';

import 'package:flutter/material.dart';
import 'package:storeyard/Onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
 
 class MyHomePage extends StatefulWidget {
   MyHomePage({Key key}) : super(key: key);
 
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   
   @override
  void initState() {
     
    super.initState();
    Timer(Duration(seconds:5),openOnBoard);
  }
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body:Container(
         height: MediaQuery.of(context).size.height ,
         width: MediaQuery.of(context).size.width ,
         decoration: BoxDecoration(
            image:DecorationImage(
               image:AssetImage("assets/images/bg.png") 
           ) 
         ),
         child: Center(
           child: Container(
            height:200 ,
            width:200 ,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:AssetImage("assets/images/logo.png") 
                )
           ),
           ),
          
         ) ,
         ),
     );
   }

    void openOnBoard(){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>onboarding()),);
    }
    
    }
   
    

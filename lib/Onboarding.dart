import 'package:flutter/material.dart';


class Onboarding extends StatelessWidget {
  
  const Onboarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onboarding = Onboarding;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

 
class onboarding extends StatefulWidget {
  onboarding({Key key}) : super(key: key);

  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  
  PageController _pageController = new PageController(
    initialPage:0,
 
  );
  
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
       body:Stack(
                children:[
                     Container(
           height: MediaQuery.of(context).size.height ,
           width: MediaQuery.of(context).size.width ,
           decoration: BoxDecoration(
              image:DecorationImage(
                   image:AssetImage("assets/images/bg.png") 
             ) 
           ),        
           ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 500,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      onBoardPage("onBoard1","Choose Clothes"),
                    ],
                  ),
                )
            ]

           )
           ],
       ),
     );
      

  }
     Column onBoardPage(String img,String title){
        {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/$img.png')
              )
          ),
        ),
        // Container(
        //   padding: EdgeInsets.symmetric(vertical: 10),
        //   child: Text(title, style: TextStyle(
        //       fontSize: 30,
        //       fontFamily: 'roboto',
        //       fontWeight: FontWeight.w500
        //   ),),
        // ),
        // Container(
        //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        //   child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text", style: TextStyle(
        //       fontSize: 16,
        //       color: Colors.grey
        //   ),textAlign: TextAlign.center,),
        // )
      ],
    );
        }
     }
}
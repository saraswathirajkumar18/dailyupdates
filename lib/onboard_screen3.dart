import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';


class OnboardScreen3 extends StatefulWidget {
 final PageController pageController;

  const OnboardScreen3({required this.pageController, Key? key}) : super(key: key);
  @override
  State<OnboardScreen3> createState() => _OnboardScreen3State();
}

class _OnboardScreen3State extends State<OnboardScreen3> {
 void  openHomePage()
  {
Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
  }
  
  @override
  Widget build(BuildContext context) {                                          
    return Scaffold(
      body:SafeArea(
        child: Container(
          
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), 
            color: Colors.white, // Background color for the parent container
            border: Border.all(color: Colors.white.withOpacity(0.1), width:0),
            
            ),// Rounded corners fo
          child: Column(
            children: [
             Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only( // Rounded corners for the child container
                  topLeft: Radius.circular(20), // Round top left corner
                  topRight: Radius.circular(20), 
                  ),
                  child: Container(
                    decoration: BoxDecoration(   
                      image: DecorationImage(
                        image: AssetImage('assets/images/onboard3.jpg'),
                        fit: BoxFit.cover,
                        ),
                    ),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent, // Makes background transparent
                              elevation: 0, // Removes shadow
                            ),
                            onPressed:openHomePage,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('SKIP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        //SizedBox(height: 70),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom:40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             //Expanded(child: SizedBox.shrink()),
                             //SizedBox(height:30),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Delivered like Flash',
                              style: TextStyle(
                                            color: Colors.white,
                                            fontSize:18,
                                            fontWeight: FontWeight.bold,
                                          ),),
                            ),
                          
                        Text('Enjoy your meals as you like\n     any where any time',
                        style: TextStyle(
                                      color: Colors.white,
                                      fontSize:14,
                                    ),),
                        ],
                        ),
                      ),
                      
                      ],
                      ),
                    ),
                  ),
                  ),
                ),
              ),
            SizedBox(height: 40),
            ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF14278D), // Makes background transparent
                      elevation: 0, // Removes shadow
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                    ),
                    onPressed:openHomePage,
                    child: Text('Get started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40),
            ],
          ),
        ),
        ),
    );
  }
}
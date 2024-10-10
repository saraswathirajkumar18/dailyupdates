/*import 'package:flutter/material.dart';
import 'package:food_app/onboard_screen2.dart';
import 'package:food_app/homepage.dart';

class OnboardScreen1 extends StatefulWidget {
final PageController pageController; // Declare a variable to hold the PageController

  const OnboardScreen1({required this.pageController, Key? key}) : super(key: key);
  @override
  State<OnboardScreen1> createState() => _OnboardScreen1State();
}

class _OnboardScreen1State extends State<OnboardScreen1> {
 void  openHomePage()
  {
Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
  }
/*void openScreen()
  {
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
       );
  }*/
  @override
  Widget build(BuildContext context) {     
    //final width = MediaQuery.of(context).size.width;
//final height = MediaQuery.of(context).size.height;
                                     
    return Scaffold(
      body:SafeArea(
        child: Container(
          //width: width * 1.0, // 80% of screen width
 // height: height * 0.9, 
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
                        image: AssetImage('assets/images/onboard1.jpg'),
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
                              child: Text('We made it for you!',
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
                    onPressed:(){
                widget.pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
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
}*/
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  /*final String image;
  final String text;*/
  final String image;
  final String text1;
  final String text2;
  final int currentIndex;
  final int totalImages;

  OnboardPage({
    required this.image,
    required this.text1,
    required this.text2,
    required this.currentIndex,
    required this.totalImages,
  });

  //OnboardPage({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
       width: double.infinity,
        height: double.infinity, color: Colors.black.withOpacity(0.5), // Semi-transparent black overlay
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text on top of the overlay
            Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text1,
                    style: TextStyle(
                      fontSize:18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                   ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize:12,
                   // fontWeight: FontWeight.bold,
                    color: Colors.white,
                 ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            //SizedBox(height: 20),
            // Dash indicators
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(totalImages, (i) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: currentIndex == i ? 16.0 : 16.0, // Width for dash
                    height: 3.0, // Height for dash
                    decoration: BoxDecoration(
                      color: currentIndex == i ? Colors.white: Colors.white70,
                      borderRadius: BorderRadius.circular(4.0), // Rounded corners
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

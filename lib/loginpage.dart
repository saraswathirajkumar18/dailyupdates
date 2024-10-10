import 'package:flutter/material.dart';
import 'package:food_app/otp_verification.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 void onPressed()
 {
  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>OTPVerificationPage()),
                );
  //Navigator.push(context,MaterialPageRoute(builder:(context)=>OTPVerificationPage()));
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
         preferredSize: Size.fromHeight(90.0), 
        child: AppBar(title: Padding(
          padding: const EdgeInsets.only(top:35.0),

          child: Text('Login or Create Account',
           style: TextStyle(
            fontWeight: FontWeight.bold,
          color:Color(0xFF1E1E1E),
           fontSize:15.0),
          ),
             
        ),
        backgroundColor: Colors.blue, // Set background color
          //elevation:4.0,  
        ),
      ),
      body:Container(
        padding: EdgeInsets.all(16.0), 
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            //SizedBox(height: 20), // Space above the AppBar
          Text('Phone number', 
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize:14.0,
            fontWeight:FontWeight.w600,
            fontFamily: 'Roboto',
            ),
            ),
           Container(
             margin: EdgeInsets.symmetric(vertical: 20.0),
             child: Expanded(
               child: TextField(
                keyboardType: TextInputType.phone,
                 style: TextStyle(
                color: Color(0xFFbB4B4B4),
                 fontSize:14.0),
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF030303),),
                  ), 
                  hintText:'+91  Enter phone number',
                ),
               ),
             ),
           ),
           SizedBox(height: 8),
           ElevatedButton(
               onPressed:onPressed,
               style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                       backgroundColor: Color(0xFF14278D),  // Button background color
                       shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                    ),
                       ),
           
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center, // Center the content
                 children: [
                   Text(
                     'Continue',
                     style: TextStyle(
                       fontSize: 15,
                       color: Color(0xFFFCFCFC),
                       //fontFamily: 'Poppins',
               
                     ),
                   ),
                 ],
               ),
             ) ,
          
      Container(
        margin: EdgeInsets.symmetric(vertical: 45.0),
        child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1, // Thickness of the divider
                        color: Colors.grey, // Color of the divider
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '  or  ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey, // Color of the text
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
      ),    
          
       ElevatedButton(
          onPressed: () { print("signin with google"); },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            backgroundColor: Color(0xFFE5E5E5),  // Button background color
            shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                      ),
            ),
      
          child: Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content
      children: [
        Image.asset(
          'assets/images/google.png', // Replace with your asset path
          height: 24, // Adjust height as needed
          width: 24,  // Adjust width as needed
        ),
        SizedBox(width:15), // Add space between the icon and text
        Text(
          'Continue with Google',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF000000),
            fontFamily: 'Roboto',
          
          ),
        ),
      ],
          ),
        ),
      //)
      SizedBox(height:12),
      ElevatedButton(
          onPressed: () { print("signin with Apple"); },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            backgroundColor: Color(0xFFE5E5E5),  // Button background color
            shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                      ),
            ),
      
          child: Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content
      children: [
        Image.asset(
          'assets/images/apple.png', // Replace with your asset path
          height: 24, // Adjust height as needed
          width: 24,  // Adjust width as needed
        ),
        SizedBox(width:15), // Add space between the icon and text
        Text(
          'Continue with Apple',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF000000),
            fontFamily: 'Roboto',
          
          ),
        ),
      ],
          ),
        ),
      SizedBox(height:12),
      ElevatedButton(
          onPressed: () { print("signin with Mail"); },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            backgroundColor: Color(0xFFE5E5E5),  // Button background color
            shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                      ),
            ),
      
          child: Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content
      children: [
        Image.asset(
          'assets/images/email.png', // Replace with your asset path
          height: 24, // Adjust height as needed
          width: 24,  // Adjust width as needed
        ),
        SizedBox(width:15), // Add space between the icon and text
        Text(
          'Continue with Mail',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF000000),
            fontFamily: 'Roboto',
          
          ),
        ),
      ],
          ),
        ),
      Spacer(),
      //SizedBox(width:10),
         //alignment: Alignment.bottomCenter,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20 ,vertical:30),
          child: Text('By continuing your agree to our Terms of Service\n                 Privacy Policy Content Policy',
          style: TextStyle(fontSize:12,fontFamily: 'Roboto',color: Color(0xFF2D2A2A),
          //color:Color(0xFF2A2A),
          ),
          ),
        )
        
          ],    
        ),     
      
      )
    );
  }
}
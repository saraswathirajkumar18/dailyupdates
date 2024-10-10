import 'package:flutter/material.dart';
import 'package:food_app/name_settingup_page.dart';

class MailOTPVerification extends StatefulWidget {
  //const MailOTPVerification({super.key});

  @override
  State<MailOTPVerification> createState() => _MailOTPVerificationState();
}

class _MailOTPVerificationState extends State<MailOTPVerification> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: 100,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        SizedBox(height:40), // Space before the heading
        //SizedBox(height: 0), // Space between texts and heading
        Text(
          'Enter  OTP for verification',
          style: TextStyle(fontSize:15.0, fontWeight: FontWeight.bold,color:Color(0xFF1E1E1E),),
        ),
         SizedBox(height:8),
        Text(
          'we’ve sent you the otp to \ngoogle@gmail.com',
          style: TextStyle(fontSize:15.0, color: Color(0xFF4E4E4E),),
        ),
            SizedBox(height:30),
            ],
          ),
        ),
      ),

      
      /*PreferredSize(
         preferredSize: Size.fromHeight(200.0), 
        child: AppBar(title: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top:0.0),
            
              child: Text('Enter  OTP for verification',
               style: TextStyle(
                fontWeight: FontWeight.bold,
              color:Color(0xFF1E1E1E),
               fontSize:15.0),
              ),
                 
            ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text('we’ve sent you the otp to \ngoogle@gmai.com',
            style: TextStyle(
                fontWeight:FontWeight.w400,
                 fontSize:10.0,
            ),
            ),
          ),
          ],
        ),
        //backgroundColor: Colors.white, // Set background color
          //elevation:4.0,  
        
        ),
      ),*/
        body:Container(
           padding: EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:20,top:20),
                child: Text('Enter 6 digit otp',
                  style:TextStyle(
                   fontFamily: 'Roboto',
                    fontSize:14.0,
                    color: Color(0xFF7B7A7A),
                  ) ,
                  ),
              ),
               Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                OTPTextField(),
                SizedBox(width: 16), 
                OTPTextField(),
                SizedBox(width: 16), 
                OTPTextField(),
                SizedBox(width: 16), 
                OTPTextField(),
                
                ] 
               ),
           Padding(
             padding: const EdgeInsets.only(top:20,bottom:20),
             child: Text('Resend',
             style:TextStyle(
              fontSize: 15,
              fontWeight:FontWeight.w500,
             ),
             ),
           ),
            SizedBox(height: 40),
            ElevatedButton(
               onPressed:(){
                 Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) =>NameSettingupPage()),
                );
               },
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
                     'Verify',
                     style: TextStyle(
                       fontSize: 15,
                       color: Color(0xFFFCFCFC),
                       fontWeight:FontWeight.w500,
                       //fontFamily: 'Poppins',
               
                     ),
                   ),
                 ],
               ),
             ) ,
          
            ]
          ),
        ),
      );

  }
}
class OTPTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Width of each text box
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1, // Limit input to one character
        textAlign: TextAlign.center, // Center the text
        decoration: InputDecoration(
          counterText: '', // Hide character counter
          hintText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF030303)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF030303), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF030303), width: 2),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/homepage.dart';
import 'splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //statusBarColor: Colors.blue, // Set the status bar background color
      //statusBarIconBrightness: Brightness.light, // Set the status bar text color
      //statusBarBrightness: Brightness.dark, // For iOS
    ));
    
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Your Flutter App',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        fontFamily: 'Poppins', // Set the default font family here
         ),
      home: //HomePage(),
      SplashScreen(),
    );
  }
}

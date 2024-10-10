/*import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text('Home Page'),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(child: Text('Welcome to the Home Page!')),
    );
  }
}*/
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Text('Home Screen', style: TextStyle(fontSize: 24)),
    Text('Explore Screen', style: TextStyle(fontSize: 24)),
    Text('Favorites Screen', style: TextStyle(fontSize: 24)),
    Text('Profile Screen', style: TextStyle(fontSize: 24)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        //_widgetOptions.map((item) => Text(item)).toList(),
        _widgetOptions.elementAt(_selectedIndex),  // Display the selected widget
     
      ),
      //backgroundColor: Colors.white, 
      bottomNavigationBar: BottomNavigationBar(
       unselectedLabelStyle: TextStyle(color: Colors.red),
       unselectedItemColor: Color(0xFF3F3F3F),
        selectedItemColor: Color(0xFF14278D),
        selectedLabelStyle: TextStyle(color: Color(0xFF14278D)),  // Color for selected label
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,  // Set the current index
        
        //unselectedLabelStyle: TextStyle(color: Color(0xFF3F3F3F)),  // Color for unselected labels
        
        onTap: _onItemTapped,  // Handle tap events here
      backgroundColor:Colors.green,
      ),
    );
  }
}

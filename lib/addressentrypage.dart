import 'package:flutter/material.dart';
import 'package:food_app/locationconfirmationpage.dart';

class AddressEntryPage extends StatefulWidget {
  const AddressEntryPage({super.key});

  @override
  State<AddressEntryPage> createState() => _AddressEntryPageState();
}

class _AddressEntryPageState extends State<AddressEntryPage> {
  List<Map<String,dynamic>> _suggestions = [];
 final List<Map<String,dynamic>> _allItems = [
    {
      'heading': 'City name',
      'subheading': 'Sub city name',
      //'icon': Icons.pin_drop,
      'iconImage': 'assets/images/location-pin.png',
      'image': 'assets/images/location-map.png',
    },
    {
      'heading': 'City name',
      'subheading': 'Sub city name',
      'iconImage': 'assets/images/location-pin.png',
      'image':'assets/images/location-map.png',
    },
    {
      'heading': 'City name',
      'subheading': 'Sub city name',
      'iconImage': 'assets/images/location-pin.png',
      'image':'assets/images/location-map.png',
    },
    
  ];
  
  TextEditingController _controller = TextEditingController();

  void _clearText() {
    _controller.clear();
  }
  // This method is called whenever the text in the TextField changes
  void _updateSuggestions(String query) {
    if (query.isEmpty) {
      setState(() {
        _suggestions = []; // Clear suggestions if the query is empty
      });
      return;
    }

    setState(() {
      // Filter the list based on the user's input
      _suggestions = _allItems.where((item) {
        return item['heading']!.toLowerCase().contains(query.toLowerCase()) ||
               item['subheading']!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }
/*void _navigateToDetailPage(IconData icon, String title, String subtitle, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>LocationConfirmationPage(
          icon: icon,
          title: title,
          subtitle: subtitle,
          image: image,
        ),
      ),
    );
  }*/
void _navigateToDetailPage(String iconImage, String title, String subtitle, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>LocationConfirmationPage(
          iconImage: iconImage,
          title: title,
          subtitle: subtitle,
          image: image,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Address',style:TextStyle(
            fontSize:18,
            color: Color(0xFF1E1E1E),
          ),),
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                    fontSize: 16.0, // Set font size for user input here
                    fontFamily: 'Poppins', // Optional: set your font family
                    color: Colors.black, // Optional: set text color
                  fontWeight: FontWeight.w400, 
                  ),
               decoration: InputDecoration(
                          filled: true,
                      fillColor: Color(0xFFF0F0F0),
                          hintText: 'Search for an address',
                          border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 0.0), // Border color and width
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Same radius for enabled state
                borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 0.0), // Border color for enabled state
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Same radius for focused state
                borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 0.0), // Thicker border for focused state
              ),
                          hintStyle: TextStyle(
                        fontSize: 14.0, // Set your desired font size here
                        //fontFamily: 'Roboto', // Set your desired font family here
                        fontWeight: FontWeight.w400, // Set your desired font weight here
                        //color: Color(0xFF4B4B4B), // Optional: Change hint text color
                      ),
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: IconButton( // Suffix icon
              icon: Icon(Icons.clear),
              onPressed: _clearText, // Clear the text when tapped
            ),
                          //border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.all(20), // Padding inside the TextField
                        ),
              controller: _controller,
              
              onChanged: _updateSuggestions, // Calls this method with the current text
            ),
            SizedBox(height: 10), // Space between TextField and ListView
            if (_suggestions.isNotEmpty) // Only display if there are suggestions
              Expanded(
                child: ListView.builder(
                  itemCount: _suggestions.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: 
                          //Icon(_suggestions[index]['icon'] as IconData),
                          Image.asset(
                          _suggestions[index]['iconImage'], // Replace with your asset path
                          height: 24, // Adjust height as needed
                          width: 24,  // Adjust width as needed
                        ),
                          title: Text(_suggestions[index]['heading']!,style:TextStyle(fontSize:16,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                           ),),
                          subtitle: Text(_suggestions[index]['subheading']!,
                          style:TextStyle(fontSize:14,
                          color: Color(0xFF6B6363),
                          fontWeight: FontWeight.w400,
                           ),),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                         // onTap: () {
                            // Handle the tap
                            onTap: () => _navigateToDetailPage(
                            //_suggestions[index]['icon'] as IconData,
                            _suggestions[index]['iconImage']!,
                            _suggestions[index]['heading']!,
                            _suggestions[index]['subheading']!,
                            _suggestions[index]['image']!,
                          ),
                         // },
                        ),
                      if (index < _suggestions.length - 1) 
            Divider(
              color: Color(0xFFE3E3E3), // Set the color of the divider
              thickness: 1, // Set the thickness of the divider
              height: 2, // Set the height around the divider
            ),
                      ],
                    );
                  },
                ),
              
              ),
          ],
        ),
      ),
    );
  }
}

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Address')),
    );
  }
}*/
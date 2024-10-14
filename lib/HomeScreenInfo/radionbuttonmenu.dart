import 'package:flutter/material.dart';

class RadioButtonMenu extends StatefulWidget {
  

  @override
  State<RadioButtonMenu> createState() => _RadioButtonMenuState();
}

class _RadioButtonMenuState extends State<RadioButtonMenu> {

  final List<String> foodCategory = ['All', 'Breakfast', 'Lunch','Snacks', 'Drinks'];
  late String selectedFoodCategory = foodCategory[0];
  
  final Map<String, List<String>> images = {
    'All': ['assets/images/homepageimg/radiobtnmenu1.png', 'assets/images/homepageimg/radiobtnmenu2.png', 'assets/images/homepageimg/radiobtnmenu3.png','assets/images/homepageimg/radiobtnmenu4.png'],
    'Breakfast': ['assets/images/homepageimg/radiobtnmenu2.png', 'assets/images/homepageimg/radiobtnmenu1.png', 'assets/images/homepageimg/radiobtnmenu3.png','assets/images/homepageimg/radiobtnmenu4.png'],
    'Lunch': ['assets/images/homepageimg/radiobtnmenu3.png', 'assets/images/homepageimg/radiobtnmenu4.png', 'assets/images/homepageimg/radiobtnmenu2.png','assets/images/homepageimg/radiobtnmenu1.png'],
    'Snacks': ['assets/images/homepageimg/radiobtnmenu2.png', 'assets/images/homepageimg/radiobtnmenu1.png', 'assets/images/homepageimg/radiobtnmenu3.png','assets/images/homepageimg/radiobtnmenu4.png'],
    'Drinks': ['assets/images/homepageimg/radiobtnmenu3.png', 'assets/images/homepageimg/radiobtnmenu4.png', 'assets/images/homepageimg/radiobtnmenu2.png','assets/images/homepageimg/radiobtnmenu1.png'],
  
  };

  @override
  Widget build(BuildContext context) {
    return //Scaffold(
     Padding(
       padding: const EdgeInsets.all(12.0),
       child: Container(
        constraints: BoxConstraints(
        minHeight: 100, // Optional: Set a minimum height
      ),
        /*decoration: BoxDecoration(
           border: Border.all(
        color: Colors.blue, // Border color
        width: 2, // Border width
           ),
       
        ),*/
        height:500, 
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.only(top:15,bottom:15),
                 child: Container(
                  //for each radio button
                               height: 50,
                               child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                  [
                   //SizedBox(width:10),
                   ...foodCategory.map((category) {
                    //print("c is $category");
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal:5),
                    //padding: const EdgeInsets.all(8.0),
                    child: buildRoundedButton(category),
                  );
                               }).toList(),
                               //SizedBox(width:50),
                  ],
                  /*[
                    //Icon(Icons.arrow_left), // Element before radio buttons
                    SizedBox(width: 10), // Space between icon and buttons
                    ...foodCategory.map((category) {
                      return buildRoundedButton(category);
                    }).toList(),
                    SizedBox(width: 10), // Space between buttons and icon
                    Icon(Icons.arrow_right), // Element after radio buttons
                  ],*/
                               ),
                             ),
               ),
       
            /*Row(
              children: foodCategory.map((category) {
                return buildRoundedButton(category);
              }).toList(),
            ),*/
            Expanded(
              child: GridView.builder(
                 padding: EdgeInsets.all(0.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two images per row
                  crossAxisSpacing:5,
                  mainAxisSpacing: 5,
                ),
               
                itemCount: images[selectedFoodCategory]?.length ?? 0,
       
                itemBuilder: (context, index) {
                                //if like to print need to write inside itembuilder-print(itemCount);
                 /* return Card(
                    child: Image.asset(images[selectedFoodCategory]![index]),
                  );*/
                return Card(
         //elevation: 4, // Optional: Adds shadow effect
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
        side: BorderSide(
      color:Color(0xFFE3E3E3), // Set your border color here
      width: 1, // Set the border width
    ),
         ),
         child: Image.asset(
            images[selectedFoodCategory]![index],
            fit: BoxFit.cover, // Adjust the fit as needed
            
          ),
         /*child: Container(
           width: 100, // Specify your desired width
           height: 100,
           decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2), // Set the border color and width
        borderRadius: BorderRadius.circular(10), // Match this with the Card's borderRadius
           ),*/
           /*child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Clip the image to match the border radius
        child: Container(
          //width: 0, // Specify your desired width
           //height: 100,
           decoration: BoxDecoration(
        //border: Border.all(color: Colors.blue, 
        //width: 2
        //), // Set the border color and width
        borderRadius: BorderRadius.circular(10),
            ), // M
          child: Image.asset(
            images[selectedFoodCategory]![index],
            fit: BoxFit.cover, // Adjust the fit as needed
            
          ),
        ),
           ),*/
         //),
       //);
                );
                },
              ),
            ),
          ],
        ),
           ),
     );
  }

  Widget buildRoundedButton(String category) {
    //print("button is");
  //convert first letter of string 
   // String categoryKey =category;
   String categoryKey =category;
    // category.toUpperCase() + category.substring(1).toLowerCase();
   // print("key is $categoryKey");
    //remove all empty space in string 
    //.replaceAll(' ', '');

    //bool isSelected = selectedFoodCategory == categoryKey;
    bool isSelected =selectedFoodCategory.toLowerCase().replaceAll(' ', '') == categoryKey.toLowerCase().replaceAll(' ','');
    //trim();
//print("selected$isSelected");
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFoodCategory = categoryKey;
        });
      },
      child: Container(
        width:130,
        height:32,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF14278D) : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected ? Color(0xFF14278D): Color(0xFFB3B3B3C4),
            width:.7,
          ),
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              color: isSelected ? Colors.white : Color(0xFF1F1D1D),
              fontSize:13,
              fontWeight: isSelected? FontWeight.w600:FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

 
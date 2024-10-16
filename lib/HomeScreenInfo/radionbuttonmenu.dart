import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/radiobtnmenucard.dart';


class RadioButtonMenu extends StatefulWidget {
  

  @override
  State<RadioButtonMenu> createState() => _RadioButtonMenuState();
}

class _RadioButtonMenuState extends State<RadioButtonMenu> {

  final List<String> foodCategory = ['All', 'Breakfast', 'Lunch','Snacks', 'Drinks'];
  late String selectedFoodCategory = foodCategory[0];
  
 // final Map<String, List<String>> images = {
 final Map<String, List<Map<String, dynamic>>> cardData = {
    'All': [
       {'image':'assets/images/homepageimg/radiomenu1.png', 
       'texts': ['Dosa', '1.2 kms', '10-15mins'],
        'chipContent': '4.5' // Add chip content here
        },
    {'image':'assets/images/homepageimg/radiomenu2.png', 
    'texts': ['Idly', '1.2 kms', '10-15mins'],
     'chipContent': '4.5'
    },
    {'image':'assets/images/homepageimg/radiomenu3.png',
     'texts': ['Pongal','1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     
     },
     {'image':'assets/images/homepageimg/radiomenu4.png', 
     'texts': ['Poori', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     },
     
      ],
      'Breakfast': [
        {'image':'assets/images/homepageimg/radiomenu1.png', 
       'texts': ['Dosa', '1.2 kms', '10-15mins'],
        'chipContent': '4.5' // Add chip content here
        },
    {'image':'assets/images/homepageimg/radiomenu2.png', 
    'texts': ['Idly', '1.2 kms', '10-15mins'],
     'chipContent': '4.5'
    },
    {'image':'assets/images/homepageimg/radiomenu3.png',
     'texts': ['Pongal', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     
     },
     {'image':'assets/images/homepageimg/radiomenu4.png', 
     'texts': ['Poori', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     },
      ],
      'Lunch': [
       {'image':'assets/images/homepageimg/radiomenu1.png', 
       'texts': ['Dosa', '1.2 kms', '10-15mins'],
        'chipContent': '4.5' // Add chip content here
        },
    {'image':'assets/images/homepageimg/radiomenu2.png', 
    'texts': ['Idly', '1.2 kms', '10-15mins'],
     'chipContent': '4.5'
    },
    {'image':'assets/images/homepageimg/radiomenu3.png',
     'texts': ['Pongal', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     
     },
     {'image':'assets/images/homepageimg/radiomenu4.png', 
     'texts': ['Poori', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     },
      ],
      'Snacks': [
{'image':'assets/images/homepageimg/radiomenu1.png', 
       'texts': ['Dosa', '1.2 kms', '10-15mins'],
        'chipContent': '4.5' // Add chip content here
        },
    {'image':'assets/images/homepageimg/radiomenu2.png', 
    'texts': ['Idly', '1.2 kms', '10-15mins'],
     'chipContent': '4.5'
    },
    {'image':'assets/images/homepageimg/radiomenu3.png',
     'texts': ['Pongal', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     
     },
     {'image':'assets/images/homepageimg/radiomenu4.png', 
     'texts': ['Poori', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     },
      ],
       'Drinks': [
        {'image':'assets/images/homepageimg/radiomenu1.png', 
       'texts': ['Dosa', '1.2 kms', '10-15mins'],
        'chipContent': '4.5' // Add chip content here
        },
    {'image':'assets/images/homepageimg/radiomenu2.png', 
    'texts': ['Idly', '1.2 kms', '10-15mins'],
     'chipContent': '4.5'
    },
    {'image':'assets/images/homepageimg/radiomenu3.png',
     'texts': ['Pongal', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     
     },
     {'image':'assets/images/homepageimg/radiomenu4.png', 
     'texts': ['Poori', '1.2 kms', '10-15mins'],
      'chipContent': '4.5'
     },
       ],
    /*'Breakfast': ['assets/images/homepageimg/radiobtnmenu2.png', 'assets/images/homepageimg/radiobtnmenu1.png', 'assets/images/homepageimg/radiobtnmenu3.png','assets/images/homepageimg/radiobtnmenu4.png'],
    'Lunch': ['assets/images/homepageimg/radiobtnmenu3.png', 'assets/images/homepageimg/radiobtnmenu4.png', 'assets/images/homepageimg/radiobtnmenu2.png','assets/images/homepageimg/radiobtnmenu1.png'],
    'Snacks': ['assets/images/homepageimg/radiobtnmenu2.png', 'assets/images/homepageimg/radiobtnmenu1.png', 'assets/images/homepageimg/radiobtnmenu3.png','assets/images/homepageimg/radiobtnmenu4.png'],
    'Drinks': ['assets/images/homepageimg/radiobtnmenu3.png', 'assets/images/homepageimg/radiobtnmenu4.png', 'assets/images/homepageimg/radiobtnmenu2.png','assets/images/homepageimg/radiobtnmenu1.png'],
  */
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
        //height:400, 
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
                  
                               ),
                             ),
               ),
       
            /*Row(
              children: foodCategory.map((category) {
                return buildRoundedButton(category);
              }).toList(),
            ),*/
            GridView.builder(
              shrinkWrap: true, // Allow GridView to wrap its height
                        physics: NeverScrollableScrollPhysics(), 
               padding: EdgeInsets.all(0.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two images per row
                crossAxisSpacing:5,
                mainAxisSpacing: 5,
              ),
             itemCount: cardData[selectedFoodCategory]?.length ?? 0,
            itemBuilder: (context, index) {
              var item = cardData[selectedFoodCategory]![index];
              return RadiobtnMenuCard(
                image: item['image'],
                headingText: item['texts'][0],
                subText1: item['texts'][1],
                subText2: item['texts'][2],
                chipContent:item['chipContent'],
                 onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage1()),
                );
              },
              );
            },
            ),
          ],
        ),
           ),
     );
  }

  Widget buildRoundedButton(String category) {
  //convert first letter of string 
   String categoryKey =category;
    // category.toUpperCase() + category.substring(1).toLowerCase();
   // print("key is $categoryKey");
    //remove all empty space in string 
    //.replaceAll(' ', '');

    //bool isSelected = selectedFoodCategory == categoryKey;
    bool isSelected =selectedFoodCategory.toLowerCase().replaceAll(' ', '') == categoryKey.toLowerCase().replaceAll(' ','');
    //trim();
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

 class FoodPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sweets')),
      body: Center(child: Text('Sweets Page')),
    );
  }
}
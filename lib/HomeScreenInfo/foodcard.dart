import 'package:flutter/material.dart';
import 'package:food_app/HomeScreenInfo/meals.dart';

//import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final List<Map<String, dynamic>> foodOffers = [
    {
      
      'title': 'FESTIVE DELIGHTS',
      'offerDetails': 'FLAT 50% OFF',
      'foodTypes':'MEALS',
      'imageUrl': 'assets/images/homepageimg/fcard4.png',
      'offerIconUrl':'assets/images/homepageimg/offericon.png',
      'page':Meals(),
    },
    {
      'title': 'FESTIVE DELIGHTS',
      'offerDetails': 'FLAT 50% OFF',
      'foodTypes':'SWEETS',
      'imageUrl': 'assets/images/homepageimg/fcard4.png',
      'offerIconUrl':'assets/images/homepageimg/offericon.png',
      'page':Meals(),
    },
    {
      'title': 'FAMILY SPECIALS',
      'offerDetails': 'SPECIAL OFFERS',
      'foodTypes':'20 MINS',
      'imageUrl': 'assets/images/homepageimg/fcard4.png',
      'offerIconUrl':'assets/images/homepageimg/offericon.png',
      'page':Meals(),
    },
    {
      'title': 'OFFER ZONE',
      'offerDetails': 'DIWALI SPECIALS',
      'foodTypes':'DEALS',
      'imageUrl': 'assets/images/homepageimg/fcard4.png',
      'offerIconUrl':'assets/images/homepageimg/offericon.png',
      'page':Meals(),
    },
    
  
    // Add more offers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       //this container and height must need otherwise foodcard content not display in page
       //height:400,
      child: Column(
          //height:160,
           mainAxisSize: MainAxisSize.min,
          children: [
               Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
                  'FESTIVE DEALS', // Add your desired heading text
                  textAlign: TextAlign.center, // Center the heading text
                  style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
                  ),
                ),
          ),
           GridView.builder(
             padding: EdgeInsets.all(12.0),//initially 16
             shrinkWrap: true,// Shrinks to fit content
              physics: NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2, // Number of cards in each row
               crossAxisSpacing: 5.0, // Space between cards horizontally
               mainAxisSpacing: 5.0, // Space between cards vertically
             ),
             itemCount: foodOffers.length, // Count of food offers
             itemBuilder: (context, index) {
               final offer = foodOffers[index]; // Get the current offer
           
               return FoodOfferCard(
                 title: offer['title'],
                 offerDetails: offer['offerDetails'],
                 foodTypes: offer['foodTypes'],
                  imageUrl: offer['imageUrl'],
                  offerIconUrl:offer['offerIconUrl'],
                 onTap: () {
                   // Navigate to the respective page
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => offer['page']),
                   );
                 },
               );
             },
           ),
          ],
        //),
      ),
    );
  }
}
    
class FoodOfferCard extends StatelessWidget {
  final String title;
  final String offerDetails;
  final String foodTypes;
  final String imageUrl; 
  final VoidCallback onTap;
  final String offerIconUrl;

  FoodOfferCard({
    required this.title,
    required this.offerDetails,
    required this.foodTypes,
    required this.imageUrl,
    required this.onTap,
    required this.offerIconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, 
      child: Container(
        //width: 100, // Set the desired width of the card
        //height: 250,
        child: Card(
           color: Colors.white,
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12), // Rounded border
          side: BorderSide(
              color: Color(0xFFE3E3E3), // Set your desired border color here
              width: 1.0, // Set the border width
            ),
          ),
          
          elevation: 4,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 // mainAxisSize: MainAxisSize.min, // Allow the card to size based on content
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 13, 
                      fontWeight: FontWeight.w600,
                      color:Color(0xFF1E1E1E),
        ),
                    ),
                    SizedBox(height: 8), // Space between title and offer details
                    Row(
                      children: [
                        Image.asset(
                          offerIconUrl, // Load the icon image
                          height: 20, // Set the height of the icon
                          width: 20, // Set the width of the icon
                        ),
                        SizedBox(width: 8),
                        Text(
                          offerDetails,
                          style: TextStyle(fontSize:9, fontWeight: FontWeight.w700,color:Color(0xFFFF6B00)),
                        ),
                      ],
                    ),
                   SizedBox(height: 8), // Space between offer details and chips
                   
                  Container(
  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Color(0xFFEAC954), width: 1.0),
    color: Colors.white,
  ),
  child: Padding(
    padding: const EdgeInsets.all(3.0),
    child: Text(
      foodTypes,
      style: TextStyle(color: Color(0xFF515151), fontSize: 8, fontWeight: FontWeight.w600),
    ),
  ),
)
                  
                  
                    /*Chip(
                        label: Text(
                          foodTypes, // Display the single food type as a chip
                          style: TextStyle(
                            color:Color(0xFF515151),
                          fontSize:8, fontWeight: FontWeight.w600),
                        ),
                       padding: EdgeInsets.symmetric(horizontal: 4),
                        backgroundColor: Colors.white, // Chip color
                        shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Rounded corners
               side: BorderSide(
        color: Color(0xFFEAC954), // Set your desired border color here
        width: 1.0, // Set the desired border width here
            ),
            ),
                      ),*/
                   //),
                  ],
                ),
              ),
           /* Positioned(
                bottom: 0,
                right: 0,
                child: ClipRRect(
                  //border:
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150), // Round only the top right corner
                    bottomRight: Radius.circular(150), // Round only the bottom right corner
                    bottomLeft:  Radius.circular(150),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height:87, // Set the height of the image
                    width:120, // Set the width of the image
                    fit: BoxFit.cover, // Cover the area while preserving aspect ratio
                  ),
                ),
              ),
            */
            
        
         Positioned(
                bottom: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), // Rounded corners for the image
                    bottomRight: Radius.circular(30), // Rounded corners for the image
                   // bottomLeft: Radius.circular(12),
                  ),
                  child: Container(
                    height: 100, // Set the height of the image container
                    width: 130, // Set the width of the image container
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover, // Cover the area while preserving aspect ratio
                    ),
                  ),
                ),
              ),
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}


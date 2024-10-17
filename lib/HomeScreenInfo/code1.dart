import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

/*class Product {
  final String imagePath;
  final String title;
  final double cost;
  final int reviewCount;

  Product(this.imagePath, this.title, this.cost, this.reviewCount);
}*/

class Code1 extends StatefulWidget {
  
  @override
  State<Code1> createState() => _Code1State();
}

class _Code1State extends State<Code1> {
  final List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 100,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width:50,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

  /*List<Product> productList = [
    Product('assets/images/homepageimg/trynewmenu1.png', 'Black Chair', 20, 15),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Awesome Sofa', 165, 10),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Copper Lamp', 10, 25),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Orange Lamp', 9, 50),
   /* Product('assets/images/homepageimg/trynewmenu1.png', 'Comfortable Chair', 15, 5),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Simple Chair', 20, 7),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Nice Lamp', 14, 10),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Awesome Planter', 9, 25),
    Product('assets/images/homepageimg/trynewmenu1.png', 'Blue & White Sofa', 50, 43),
    Product('assets/images/homepageimg/trynewmenu1.png', 'White Planter', 5, 25),*/
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ScrollSnapList(
        itemBuilder: buildListItem,
        itemCount: productList.length,
        itemSize: 150,//width of item-horizontel scroll
        onItemFocus: (index) {
          // Optional: Handle item focus
        },
        dynamicItemSize: true,
      ),
    );
  }

  Widget buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 150,
      height: 300,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
                width: 150,
                height: 180,
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: const TextStyle(fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.cost}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${product.reviewCount} Reviews',
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/


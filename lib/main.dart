import 'package:flutter/material.dart';
import 'menu.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  List<Menu> menuItems = [
    //the list of name and img (import form class Menu)
    Menu(name: 'Pasta', imgPath: 'images/pasta.jpg'),
    Menu(name: 'Burger', imgPath: 'images/burger.jpg'),
    Menu(name: 'Suchi', imgPath: 'images/suchi.jpg'),
    Menu(name: 'Pizza', imgPath: 'images/pizza.jpg'),
    Menu(name: 'Biryani', imgPath: 'images/biryani.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text('Food Menu', style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Rounded corners for the card
              ),
              color: Colors.white, // Card background color
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image Section
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(15), // Rounded Image
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          menuItems[index].imgPath, //add the img form the list
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover, // Ensures image fits well
                        ),
                      ),
                    ),
                    SizedBox(width: 20),

                    // Text Section
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            menuItems[index]
                                .name, //add the name from the the list
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.deepPurple,
                            ),
                          ),
                          const SizedBox(height: 10),

                          // description
                          Text(
                            'Delicious ${menuItems[index].name} just for YOU', //display the description of the food menu
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

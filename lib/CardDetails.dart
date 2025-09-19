import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  final String name;
  final String image;

  const CardDetails({super.key, required this.name, required this.image});

  String getDescription(String name) {
    switch (name) {
      case 'The Grudge':
        return 'The Grudge is a horror game where players explore a cursed house, '
            'uncover its dark secrets, and survive encounters with vengeful spirits.';
      case 'dead House':
        return 'Dead House is a horror survival game where players navigate a '
            'haunted house, solve puzzles, and survive terrifying encounters with '
            'ghosts and other dark forces.';
      case 'The Abyss':
        return 'The Abyss is an immersive adventure game where players explore mysterious '
            'underwater worlds, uncover hidden secrets, and face thrilling challenges '
            'beneath the ocean depths.';
      default:
        return 'No description available for $name.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.all(21),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text(
                    getDescription(name),
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      "300 DT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child:
                    ElevatedButton.icon(
                      onPressed: () {
                        print("Button pressed!");
                      },
                      icon: Icon(Icons.add_shopping_cart_rounded),
                      label: Text("Acheter",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent,
                        foregroundColor: Colors.white,
                          minimumSize: Size(150, 50),
                      ),
                    ),
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

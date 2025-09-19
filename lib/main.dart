import 'package:flutter/material.dart';
import 'package:g_store/CardItem.dart';

void main() {
  runApp(MaterialApp(
    home : Scaffold(
      appBar: AppBar(
        title: Text(
          "G-Store",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: const [
          CardItem(name: "The Grudge", image: "assets/images/the-grudge.jpg"),
          CardItem(name: "dead House", image: "assets/images/dead.jpg"),
          CardItem(name: "The Abyss", image: "assets/images/abys.jpg"),
        ],
      ),

    )
  ));
}



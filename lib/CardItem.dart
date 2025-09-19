import 'package:flutter/material.dart';
import 'CardDetails.dart';

class CardItem extends StatelessWidget{

  final String name;
  final String image;

  const CardItem({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardDetails(name: name, image: image),
              ),
            );
          },
      child: Card(
        child: Column(
            children: [
              Image.asset(
                  image,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name),
                    Icon(Icons.star, color: Colors.amber, size: 20,)
                  ],
                ),
              )
            ]
        ),
        ),
      ),
    );
  }

}
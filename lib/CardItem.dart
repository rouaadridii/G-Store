import 'package:flutter/material.dart';

class CardItem extends StatelessWidget{

  final String name;
  final String image;

  const CardItem({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
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
    );
  }

}
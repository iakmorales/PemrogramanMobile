import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(
        name: "Sugar",
        price: 5000,
        stock: 10,
        rating: 4.5,
        image: "assets/gula.jpg",
      ),
      Item(
        name: "Salt",
        price: 2000,
        stock: 20,
        rating: 4.2,
        image: "assets/garam.jpg",
      ),
      Item(
        name: "Coffee",
        price: 15000,
        stock: 15,
        rating: 4.8,
        image: "assets/kopi.jpg",
      ),
      Item(
        name: "Tea",
        price: 8000,
        stock: 25,
        rating: 4.3,
        image: "assets/teh.jpg",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Card(
              child: Column(
                children: [
                  Hero(
                    tag: item.name, // 🔥 harus unik & sama dengan di ItemPage
                    child: Image.network(
                      item.image,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(item.name),
                  Text("Rp ${item.price}"),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          "Zaskia Maulidina Mutiara Hati - 244107060056",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
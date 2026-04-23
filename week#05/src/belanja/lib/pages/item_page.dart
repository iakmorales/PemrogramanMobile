import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.name, // 🔥 harus sama
              child: Image.network(item.image),
            ),
            Text(item.name, style: const TextStyle(fontSize: 20)),
            Text("Rp ${item.price}"),
          ],
        ),
      ),
    );
  }
}
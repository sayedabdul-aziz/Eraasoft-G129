import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Center(
        child: Text(
          'Your cart is empty',
          style: TextStyle(fontSize: 20, color: Colors.grey[600]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to add items to the cart
        },
        child: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}

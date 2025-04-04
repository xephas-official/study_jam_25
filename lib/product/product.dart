import 'package:flutter/material.dart';
import 'package:study_jam_25/product/product_tile.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Stock'), backgroundColor: Colors.white),

      // SingleChildScrollView(
      body: ListView(
        children: [
          SizedBox(height: 10),

          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),

          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      ),
    );
  }
}

String ProductCardDemoCode='''
import 'package:flutter/material.dart';

class ProductCardDemo extends StatelessWidget {
  const ProductCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row & Column Layout")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green.shade50,
          ),
          child: Row(
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/product.png',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              // Product Name & Price
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Fresh Broccoli",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "₹40 per kg",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // Add Button
              ElevatedButton(
                onPressed: () {},
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

''';
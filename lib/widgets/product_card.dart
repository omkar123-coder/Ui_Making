import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(product.image),
            ),
            Text(
              product.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("₹${product.price}"),
            Text(
              "₹${product.oldPrice}",
              style: const TextStyle(
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

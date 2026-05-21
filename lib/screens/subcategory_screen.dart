import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../widgets/category_card.dart';
import '../data/dummy_data.dart';
import 'product_screen.dart';

class SubCategoryScreen extends StatelessWidget {
  final CategoryModel category;

  const SubCategoryScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductScreen(
                      category: categories[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

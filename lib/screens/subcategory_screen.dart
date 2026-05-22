import 'package:flutter/material.dart';
import 'package:ui_making/screens/product_screen.dart';
import 'package:ui_making/widgets/header.dart';
import '../data/dummy_data.dart';
import '../widgets/category_card.dart';

class SubCategoryScreen extends StatelessWidget {
  final String title;

  const SubCategoryScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            const SizedBox(height: 20),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            GridView.builder(
              itemCount: subCategories.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final item = subCategories[index];

                return CategoryCard(
                  category: item,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductScreen(
                          category: item,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

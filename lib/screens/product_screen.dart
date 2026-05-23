import 'package:flutter/material.dart';
import 'package:ui_making/widgets/header.dart';

import '../data/dummy_data.dart';
import '../models/category_model.dart';
import '../widgets/product_card.dart';

class ProductScreen extends StatefulWidget {
  final CategoryModel category;

  const ProductScreen({
    super.key,
    required this.category,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(widget.category.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 20),
            SizedBox(
              height: 95,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {

                  final item = categories[index];

                  return Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: index == selectedIndex
                                    ? Colors.orange
                                    : Colors.transparent,
                                width: 2,
                              ),
                              color: Colors.grey.shade100,
                            ),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 12,
                            color: index == 0 ? Colors.orange : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

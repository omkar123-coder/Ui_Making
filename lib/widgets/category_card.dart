import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(
              category.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "jhhg tyhgbvt gjt bfhrhyry",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

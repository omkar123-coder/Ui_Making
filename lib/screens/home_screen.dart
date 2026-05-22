import 'package:flutter/material.dart';
import 'package:ui_making/widgets/header.dart';

import '../data/dummy_data.dart';
import '../widgets/category_card.dart';
import 'subcategory_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Referral",
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    const Header(),
                    const SizedBox(height: 15),
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        mainAxisExtent: 100,
                      ),
                      itemBuilder: (context, index) {
                        final category = categories[index];

                        return CategoryCard(
                          category: category,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SubCategoryScreen(
                                  title: category.title,
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
            ],
          ),
        ),
      ),
    );
  }
}

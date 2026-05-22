import 'package:ui_making/models/product_model.dart';

import '../models/category_model.dart';

List<CategoryModel> categories = [
  CategoryModel(title: "Home", image: "assets/images/home.png"),
  CategoryModel(title: "Auto", image: "assets/images/auto.png"),
  CategoryModel(title: "Beauty", image: "assets/images/beauty.png"),
  CategoryModel(title: "Electronics", image: "assets/images/electronics.png"),
  CategoryModel(title: "Event Services", image: "assets/images/event.jpg"),
  CategoryModel(title: "Maintenance", image: "assets/images/maintenance.png"),
  CategoryModel(title: "Pet Services", image: "assets/images/pet.png"),
  CategoryModel(title: "Tutoring", image: "assets/images/tutoring.png"),
  CategoryModel(title: "Professionals", image: "assets/images/professionals.png"),
  CategoryModel(title: "Fashion", image: "assets/images/fashion.png"),
  CategoryModel(title: "Food", image: "assets/images/food.png"),
  CategoryModel(title: "Construction", image: "assets/images/construction.png"),
];

List<CategoryModel> subCategories = [
  CategoryModel(title: "Tablets", image: "assets/images/tablet.png"),
  CategoryModel(title: "Fridge", image: "assets/images/fridge.png"),
  CategoryModel(title: "Phone", image: "assets/images/phone.png"),
  CategoryModel(title: "Headset", image: "assets/images/headset.png"),
  CategoryModel(title: "Earpods", image: "assets/images/earpods.png"),
  CategoryModel(title: "Watch", image: "assets/images/watch.png"),
  CategoryModel(title: "Coffee Machine", image: "assets/images/coffee.png"),
  CategoryModel(title: "Iron", image: "assets/images/Iron.png"),
];

List<ProductModel> products = [
  ProductModel(title: 'Washing Machine', image: 'assets/images/washing.png', price: 15000, oldPrice: 18000),
  ProductModel(title: 'Coffee Machine', image: 'assets/images/coffee.png', price: 12000, oldPrice: 15000),
  ProductModel(title: 'Mixer Machine', image: 'assets/images/mixer.png', price: 13000, oldPrice: 15000),
  ProductModel(title: 'Fridge', image: 'assets/images/fridge.png', price: 20000, oldPrice: 17000),  
];
  
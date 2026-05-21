import '../models/category_model.dart';
import '../models/product_model.dart';

List<CategoryModel> categories = [
  CategoryModel(title: "Tablets", image: "assets/tablet.png"),
  CategoryModel(title: "Fridge", image: "assets/fridge.png"),
  CategoryModel(title: "Phone", image: "assets/phone.png"),
  CategoryModel(title: "Headset", image: "assets/headset.png"),
];

List<ProductModel> products = [
  ProductModel(
    title: "Washing Machine",
    image: "assets/washing.png",
    price: 15000,
    oldPrice: 18000,
  ),
  ProductModel(
    title: "Coffee Machine",
    image: "assets/coffee.png",
    price: 3500,
    oldPrice: 5000,
  ),
];

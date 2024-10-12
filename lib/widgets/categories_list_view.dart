import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({super.key});

  final List<CategoryModel> category = const [
    CategoryModel(
        image: 'assets/entertaiment.avif', titlecategory: 'Entertainment'),
    CategoryModel(image: 'assets/general.avif', titlecategory: 'General'),
    CategoryModel(image: 'assets/health.avif', titlecategory: 'Health'),
    CategoryModel(image: 'assets/science.avif', titlecategory: 'Science'),
    CategoryModel(image: 'assets/sports.avif', titlecategory: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', titlecategory: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return CustomCategory(
              category: category[index],
            );
          }),
    );
  }
}

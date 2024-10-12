import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/views/category_views.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryViews(
                category: category.titlecategory,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          height: 110,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Text(
            category.titlecategory,
            style: const TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}

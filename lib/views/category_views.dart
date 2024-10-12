import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_list_view_builder.dart';

class CategoryViews extends StatelessWidget {
  const CategoryViews({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          CustomNewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class CustomNewsListTile extends StatelessWidget {
  final List<ArticalModel> artical;

  const CustomNewsListTile({super.key, required this.artical});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: artical.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomNewsTile(
            articalmodel: artical[index],
          ),
        ),
      ),
    );
  }
}

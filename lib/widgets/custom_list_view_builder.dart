import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/custom_text_error.dart';
import 'package:news_app/widgets/news_list_view.dart';

class CustomNewsListViewBuilder extends StatefulWidget {
  const CustomNewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<CustomNewsListViewBuilder> createState() =>
      _CustomNewsListViewBuilderState();
}

class _CustomNewsListViewBuilderState extends State<CustomNewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomNewsListTile(
              artical: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: CustomTextError(
                  error: 'sorry , opps is was an error',
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

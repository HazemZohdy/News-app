import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class CustomNewsTile extends StatelessWidget {
  const CustomNewsTile({super.key, required this.articalmodel});
  final ArticalModel articalmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: articalmodel.image != null
              ? Image.network(
                  articalmodel.image!,
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                )
              : Container(),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalmodel.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalmodel.subTitle ?? '',
          style: const TextStyle(
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}

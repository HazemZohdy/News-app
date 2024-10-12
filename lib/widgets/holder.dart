// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/artical_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';

// class customNewsListTile extends StatefulWidget {
//   const customNewsListTile({super.key});

//   @override
//   State<customNewsListTile> createState() => _customNewsListTileState();
// }

// class _customNewsListTileState extends State<customNewsListTile> {
//   List<articalModel> artical = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     getNewsGeneral();
//   }

//   Future<void> getNewsGeneral() async {
//     artical = await NewsService(Dio()).getNews();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: artical.length,
//               (context, index) => Padding(
//                 padding: EdgeInsets.only(bottom: 20),
//                 child: customNewsTile(
//                   articalmodel: artical[index],
//                 ),
//               ),
//             ),
//           );
//   }
// }

import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  NewsService(this.dio);
  final Dio dio;

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f9be9146afd54385a51bc6d8816a868a&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articlas = jsonData['articles'];
      List<ArticalModel> articalList = [];

      for (var artical in articlas) {
        ArticalModel articalmodel = ArticalModel.fromJson(artical);
        articalList.add(articalmodel);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}

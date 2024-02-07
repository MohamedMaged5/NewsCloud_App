import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=d21df23ba8d34d948f613883539d3afa&category=$category&country=us");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articlesList = [];
      for (var element in articles) {
        ArticleModel article = ArticleModel.fromjson(element);
        articlesList.add(article);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

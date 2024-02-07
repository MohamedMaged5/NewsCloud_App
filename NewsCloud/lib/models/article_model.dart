class ArticleModel {
  final String? img;
  final String title;
  final String? subtitle;
  final String? content;
  const ArticleModel(
      {required this.img,
      required this.title,
      required this.subtitle,
      required this.content});

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
        img: json["urlToImage"],
        title: json["title"],
        subtitle: json["description"],
        content: json["content"]);
  }
}
